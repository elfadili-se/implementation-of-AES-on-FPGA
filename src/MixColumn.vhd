library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity mixcolumn is 
    Port(
        data_in : in std_logic_vector(127 downto 0);
        data_out : out std_logic_vector(127 downto 0)
    );
end entity;
architecture mixcolumn_arch of mixcolumn is
    signal b0,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15 : std_logic_vector(7 downto 0);
    signal C0,C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15 : std_logic_vector(7 downto 0);
    function multiplication_02 (
        b : std_logic_vector(7 downto 0)
    ) return std_logic_vector is
        variable result : std_logic_vector(7 downto 0);
    begin
        if b(7) = '0' then
            result := b(6 downto 0) & '0';
        else
            result := (b(6 downto 0) & '0') xor x"1B";
        end if;
    
        return result;
    end function;
    function multiplication_03 (
        b : std_logic_vector(7 downto 0)
    ) return std_logic_vector is 
        variable result : std_logic_vector( 7 downto 0);
    begin 
        result := multiplication_02(b) xor b ;
        return result ;
    end function;


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

        c0 <= multiplication_02(b0) xor multiplication_03(b1) xor b2 xor b3 ;
        c1 <= multiplication_02(b4) xor multiplication_03(b5) xor b6 xor b7 ;
        c2 <= multiplication_02(b8) xor multiplication_03(b9) xor b10 xor b11 ;
        c3 <= multiplication_02(b12) xor multiplication_03(b13) xor b14 xor b15 ;

        c4 <= b0 xor multiplication_02(b1) xor multiplication_03(b2) xor b3 ;
        c5 <= b4 xor multiplication_02(b5) xor multiplication_03(b6) xor b7 ;
        c6 <= b8 xor multiplication_02(b9) xor multiplication_03(b10) xor b11 ;
        c7 <= b12 xor multiplication_02(b13) xor multiplication_03(b14) xor b15 ;

        c8 <= b0 xor b1 xor multiplication_02(b2) xor multiplication_03(b3) ;
        c9 <= b4 xor b5 xor multiplication_02(b6) xor multiplication_03(b7) ;
        c10 <= b8 xor b9 xor multiplication_02(b10) xor multiplication_03(b11) ;
        c11<= b12 xor b13 xor multiplication_02(b14) xor multiplication_03(b15) ;

        c12 <= multiplication_03(b0) xor b1 xor b2 xor multiplication_02(b3) ;
        c13 <= multiplication_03(b4) xor b5 xor b6 xor multiplication_02(b7) ;
        c14 <= multiplication_03(b8) xor b9 xor b10 xor multiplication_02(b11) ;
        c15 <= multiplication_03(b12) xor b13 xor b14 xor multiplication_02(b15) ;

        data_out <= c15 & c14 & c13 & c12 & c11 & c10 & c9 & c8 & c7 & c6 & c5 & c4 & c3 & c2 & c1 & c0;

end architecture;   