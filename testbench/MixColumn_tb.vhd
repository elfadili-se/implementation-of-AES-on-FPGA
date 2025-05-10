library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity mixcolumn_tb  is 
end entity;
 

architecture mixcolumn_tb_arch of mixcolumn_tb is 
    component mixcolumn  
        Port(
            data_in : in std_logic_vector(127 downto 0);
            data_out : out std_logic_vector(127 downto 0)
        );
    end component;

    signal data_in_tb  : std_logic_vector(127 downto 0);
    signal data_out_tb : std_logic_vector(127 downto 0);

     begin
        DUT : mixcolumn port map ( data_in => data_in_tb , data_out => data_out_tb);
        stimulus : process
        begin
            data_in_tb <= x"618b611f45cac9d89b73ad97691abea7";
            wait for 10 ns ; 
            assert data_out_tb=x"09d03a77fa515164516ad831849687ff" report "test failed " severity note;
            wait;
        end process;

end architecture;       