library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;

entity shift_rows_tb is 
end entity;

architecture shift_rows_tb_arch of shift_rows_tb is

    component shift_rows 
        Port(
            data_in  : in  std_logic_vector(127 downto 0);
            data_out : out std_logic_vector(127downto 0)
        );
    end component;

    signal data_in_tb  : std_logic_vector(127 downto 0);
    signal data_out_tb : std_logic_vector(127 downto 0);
    
begin

    DUT : shift_rows 
        port map ( 
            data_in  => data_in_tb,
            data_out => data_out_tb
        );

 
    stimulus : process
    begin
        data_in_tb <= x"8ce170bae7e060cd51d0530904b7ca63";
        assert data_in_tb=x"e7d0caba51b770cd04e160098ce05363" report "failed" severity note;
        

  
        wait;
    end process;

end architecture shift_rows_tb_arch;
