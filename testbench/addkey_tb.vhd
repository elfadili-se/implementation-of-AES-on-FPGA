library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity addkey_tb is 
end entity;

architecture addkey_tb_arch of addkey_tb is
    component addkey  
        Port(
            data_in  : in  std_logic_vector(127 downto 0);
            key      : in  std_logic_vector(127 downto 0);
            data_out : out std_logic_vector(127 downto 0)
        );
    end component;

    signal data_in_tb  : std_logic_vector(127 downto 0);
    signal key_tb      : std_logic_vector(127 downto 0);
    signal data_out_tb : std_logic_vector(127 downto 0);

begin

    DUT : addkey
        port map ( 
            data_in  => data_in_tb,
            key      => key_tb,
            data_out => data_out_tb
        );

    stimulus : process
    begin
        data_in_tb <= x"F0F0050080000000FFFFAAFF70708888";
        key_tb     <= x"0F0FF0FF0FFFFFFF000000000F0F0000";
        wait;
    end process;

end architecture;
