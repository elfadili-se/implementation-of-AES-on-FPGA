library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity round_tb is 
end entity;
 architecture round_tb_arch of round_tb is 
    component round is 
        Port(
            data_in  : in  std_logic_vector(127 downto 0);
            data_out : out std_logic_vector(127 downto 0)
        );
    end component;
    
    signal data_in_tb  : std_logic_vector(127 downto 0);
    signal data_out_tb : std_logic_vector(127 downto 0);
    begin
        DUT : round  port map ( 
            data_in  => data_in_tb,
            data_out => data_out_tb
        );
        stimulus : process 
            begin
                data_in_tb <= x"F0F0050080000000FFFFAAFF70708888";
                
            wait;
            end process ; 






 end architecture;       