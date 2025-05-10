library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity shift_rows is 
    Port(
        data_in : in std_logic_vector(127 downto 0);
        data_out : out std_logic_vector(127 downto 0)
    );
end entity;
 architecture shift_rows_arch of shift_rows is 
    signal b0,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15 : std_logic_vector(7 downto 0);
    signal C0,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15 : std_logic_vector(7 downto 0);
    
 begin
    b15 <= data_in(127 downto 120);
    b14 <= data_in(119 downto 112);
    b13 <= data_in(111 downto 104);
    b12 <= data_in(103 downto 96);
    b11 <= data_in(95 downto 88);
    b10 <= data_in(87 downto 80);
    b9  <= data_in(79 downto 72);
    b8  <= data_in(71 downto 64);
    b7  <= data_in(63 downto 56);
    b6  <= data_in(55 downto 48);
    b5  <= data_in(47 downto 40);
    b4  <= data_in(39 downto 32);
    b3  <= data_in(31 downto 24);
    b2  <= data_in(23 downto 16);
    b1  <= data_in(15 downto 8);
    b0  <= data_in(7 downto 0);

    C0 <= b0;
    C4 <= b4 ;
    c8 <= b8 ;
    C12 <= b12 ;
    
    c1 <= b5 ;
    c2 <= b10 ;
    c3 <= b15 ;
    c5 <= b9 ;
    C6 <= b14;
    c7 <= b3;
    c9 <= b13 ;
    c10 <= b2 ;
    c11 <= b7 ;
    c13 <= b1 ;
    c14 <= b6 ;
    c15 <= b11 ;
    data_out <= c15 & c14 & c13 & c12 & c11 & c10 & c9 & c8 & c7 & c6 & c5 & c4 & c3 & c2 & c1 & c0;


 end shift_rows_arch;  