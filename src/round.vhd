library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity round is 
    Port(
        data_in  : in  std_logic_vector(127 downto 0);
        data_out : out std_logic_vector(127 downto 0)
    );
end entity;

architecture round_arch of round is

    type byte_array is array (0 to 15) of std_logic_vector(7 downto 0);
    signal in_subox  : byte_array;
    signal out_subox : byte_array;
    
    signal concat_subox : std_logic_vector(127 downto 0); -- ✅ nouveau signal pour la concaténation
    signal in_mixcolinm, data_out_signal : std_logic_vector(127 downto 0);

    component subox
        port (
            data_in  : in  std_logic_vector(7 downto 0);
            data_out : out std_logic_vector(7 downto 0)
        );
    end component;

    component shift_rows 
        port (
            data_in  : in  std_logic_vector(127 downto 0);
            data_out : out std_logic_vector(127 downto 0)
        );
    end component;

    component mixcolumn 
        port (
            data_in  : in  std_logic_vector(127 downto 0);
            data_out : out std_logic_vector(127 downto 0)
        );
    end component;

begin

    -- Découpage de data_in en 16 octets
    gen_in_subox : for i in 0 to 15 generate
        in_subox(i) <= data_in(127 - i*8 downto 120 - i*8);
    end generate;

    -- Application de SubBytes
    gen_subox : for i in 0 to 15 generate
        u_subox: subox
            port map (
                data_in  => in_subox(i),
                data_out => out_subox(i)
            );
    end generate;

    -- Concaténation propre dans un signal
    concat_subox <= out_subox(15) & out_subox(14) & out_subox(13) & out_subox(12) &
                    out_subox(11) & out_subox(10) & out_subox(9)  & out_subox(8)  &
                    out_subox(7)  & out_subox(6)  & out_subox(5)  & out_subox(4)  &
                    out_subox(3)  & out_subox(2)  & out_subox(1)  & out_subox(0);

    -- Application de ShiftRows
    u_shift_rows : shift_rows
        port map (
            data_in  => concat_subox,
            data_out => in_mixcolinm
        );

    -- Application de MixColumns
    u_mixcolumn : mixcolumn
        port map (
            data_in  => in_mixcolinm,
            data_out => data_out_signal
        );

    -- Résultat final
    data_out <= data_out_signal;

end architecture round_arch;


