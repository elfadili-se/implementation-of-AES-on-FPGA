library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity addkey is 
    Port(
        data_in  : in  std_logic_vector(127 downto 0);
        key      : in  std_logic_vector(127 downto 0);
        data_out : out std_logic_vector(127 downto 0)
    );
end entity addkey;

architecture addkey_arch of addkey is 
begin

    data_out <= data_in xor key;

end architecture addkey_arch;
