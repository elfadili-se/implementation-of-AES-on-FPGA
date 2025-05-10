library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sbox_tb is
end entity;

architecture sbox_tb_arch of sbox_tb is

    -- Signaux de test
    signal data_in_tb  : std_logic_vector(7 downto 0);
    signal data_out_tb : std_logic_vector(7 downto 0);

    -- Composant à tester
    component subox
        port (
            data_in  : in  std_logic_vector(7 downto 0);
            data_out : out std_logic_vector(7 downto 0)
        );
    end component;

begin

    -- Instanciation du composant (Device Under Test)
    DUT : subox
        port map (
            data_in  => data_in_tb,
            data_out => data_out_tb
        );

    -- Stimuli
    stimulus : process
    begin
        -- Cas de test 1 : x"00" -> x"63"
        data_in_tb <= x"05";
        wait for 10 ns;
        assert data_out_tb = x"63"
            report "Test échoué : S-box(00) /= 63"
            severity Note ;

        -- Cas de test 2 : x"01" -> x"7C"
        data_in_tb <= x"01";
        wait for 10 ns;
        assert data_out_tb = x"7C"
            report "Test échoué : S-box(01) /= 7C"
            severity error;

        wait;  -- Fin du process
    end process;

end architecture;

