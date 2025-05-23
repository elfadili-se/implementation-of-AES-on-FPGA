library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity subox is
    Port (
        data_in  : in  std_logic_vector(7 downto 0);
        data_out : out std_logic_vector(7 downto 0)
    );
end subox;

architecture subox_arch of subox is
begin
    process(data_in)
    begin
        case data_in is
            when x"00" => data_out <= x"63";
            when x"01" => data_out <= x"7C";
            when x"02" => data_out <= x"77";
            when x"03" => data_out <= x"7B";
            when x"04" => data_out <= x"F2";
            when x"05" => data_out <= x"6B";
            when x"06" => data_out <= x"6F";
            when x"07" => data_out <= x"C5";
            when x"08" => data_out <= x"30";
            when x"09" => data_out <= x"01";
            when x"0A" => data_out <= x"67";
            when x"0B" => data_out <= x"2B";
            when x"0C" => data_out <= x"FE";
            when x"0D" => data_out <= x"D7";
            when x"0E" => data_out <= x"AB";
            when x"0F" => data_out <= x"76";
            when x"10" => data_out <= x"CA";
            when x"11" => data_out <= x"82";
            when x"12" => data_out <= x"C9";
            when x"13" => data_out <= x"7D";
            when x"14" => data_out <= x"FA";
            when x"15" => data_out <= x"59";
            when x"16" => data_out <= x"47";
            when x"17" => data_out <= x"F0";
            when x"18" => data_out <= x"AD";
            when x"19" => data_out <= x"D4";
            when x"1A" => data_out <= x"A2";
            when x"1B" => data_out <= x"AF";
            when x"1C" => data_out <= x"9C";
            when x"1D" => data_out <= x"A4";
            when x"1E" => data_out <= x"72";
            when x"1F" => data_out <= x"C0";
            when x"20" => data_out <= x"B7";
            when x"21" => data_out <= x"FD";
            when x"22" => data_out <= x"93";
            when x"23" => data_out <= x"26";
            when x"24" => data_out <= x"36";
            when x"25" => data_out <= x"3F";
            when x"26" => data_out <= x"F7";
            when x"27" => data_out <= x"CC";
            when x"28" => data_out <= x"34";
            when x"29" => data_out <= x"A5";
            when x"2A" => data_out <= x"E5";
            when x"2B" => data_out <= x"F1";
            when x"2C" => data_out <= x"71";
            when x"2D" => data_out <= x"D8";
            when x"2E" => data_out <= x"31";
            when x"2F" => data_out <= x"15";
            when x"30" => data_out <= x"04";
            when x"31" => data_out <= x"C7";
            when x"32" => data_out <= x"23";
            when x"33" => data_out <= x"C3";
            when x"34" => data_out <= x"18";
            when x"35" => data_out <= x"96";
            when x"36" => data_out <= x"05";
            when x"37" => data_out <= x"9A";
            when x"38" => data_out <= x"07";
            when x"39" => data_out <= x"12";
            when x"3A" => data_out <= x"80";
            when x"3B" => data_out <= x"E2";
            when x"3C" => data_out <= x"EB";
            when x"3D" => data_out <= x"27";
            when x"3E" => data_out <= x"B2";
            when x"3F" => data_out <= x"75";
            when x"40" => data_out <= x"09";
            when x"41" => data_out <= x"83";
            when x"42" => data_out <= x"2C";
            when x"43" => data_out <= x"1A";
            when x"44" => data_out <= x"1B";
            when x"45" => data_out <= x"6E";
            when x"46" => data_out <= x"5A";
            when x"47" => data_out <= x"A0";
            when x"48" => data_out <= x"52";
            when x"49" => data_out <= x"3B";
            when x"4A" => data_out <= x"D6";
            when x"4B" => data_out <= x"B3";
            when x"4C" => data_out <= x"29";
            when x"4D" => data_out <= x"E3";
            when x"4E" => data_out <= x"2F";
            when x"4F" => data_out <= x"84";
            when x"50" => data_out <= x"53";
            when x"51" => data_out <= x"D1";
            when x"52" => data_out <= x"00";
            when x"53" => data_out <= x"ED";
            when x"54" => data_out <= x"20";
            when x"55" => data_out <= x"FC";
            when x"56" => data_out <= x"B1";
            when x"57" => data_out <= x"5B";
            when x"58" => data_out <= x"6A";
            when x"59" => data_out <= x"CB";
            when x"5A" => data_out <= x"BE";
            when x"5B" => data_out <= x"39";
            when x"5C" => data_out <= x"4A";
            when x"5D" => data_out <= x"4C";
            when x"5E" => data_out <= x"58";
            when x"5F" => data_out <= x"CF";
            when x"60" => data_out <= x"D0";
            when x"61" => data_out <= x"EF";
            when x"62" => data_out <= x"AA";
            when x"63" => data_out <= x"FB";
            when x"64" => data_out <= x"43";
            when x"65" => data_out <= x"4D";
            when x"66" => data_out <= x"33";
            when x"67" => data_out <= x"85";
            when x"68" => data_out <= x"45";
            when x"69" => data_out <= x"F9";
            when x"6A" => data_out <= x"02";
            when x"6B" => data_out <= x"7F";
            when x"6C" => data_out <= x"50";
            when x"6D" => data_out <= x"3C";
            when x"6E" => data_out <= x"9F";
            when x"6F" => data_out <= x"A8";
            when x"70" => data_out <= x"51";
            when x"71" => data_out <= x"A3";
            when x"72" => data_out <= x"40";
            when x"73" => data_out <= x"8F";
            when x"74" => data_out <= x"92";
            when x"75" => data_out <= x"9D";
            when x"76" => data_out <= x"38";
            when x"77" => data_out <= x"F5";
            when x"78" => data_out <= x"BC";
            when x"79" => data_out <= x"B6";
            when x"7A" => data_out <= x"DA";
            when x"7B" => data_out <= x"21";
            when x"7C" => data_out <= x"10";
            when x"7D" => data_out <= x"FF";
            when x"7E" => data_out <= x"F3";
            when x"7F" => data_out <= x"D2";
            when x"80" => data_out <= x"CD";
            when x"81" => data_out <= x"0C";
            when x"82" => data_out <= x"13";
            when x"83" => data_out <= x"EC";
            when x"84" => data_out <= x"5F";
            when x"85" => data_out <= x"97";
            when x"86" => data_out <= x"44";
            when x"87" => data_out <= x"17";
            when x"88" => data_out <= x"C4";
            when x"89" => data_out <= x"A7";
            when x"8A" => data_out <= x"7E";
            when x"8B" => data_out <= x"3D";
            when x"8C" => data_out <= x"64";
            when x"8D" => data_out <= x"5D";
            when x"8E" => data_out <= x"19";
            when x"8F" => data_out <= x"73";
            when x"90" => data_out <= x"60";
            when x"91" => data_out <= x"81";
            when x"92" => data_out <= x"4F";
            when x"93" => data_out <= x"DC";
            when x"94" => data_out <= x"22";
            when x"95" => data_out <= x"2A";
            when x"96" => data_out <= x"90";
            when x"97" => data_out <= x"88";
            when x"98" => data_out <= x"46";
            when x"99" => data_out <= x"EE";
            when x"9A" => data_out <= x"B8";
            when x"9B" => data_out <= x"14";
            when x"9C" => data_out <= x"DE";
            when x"9D" => data_out <= x"5E";
            when x"9E" => data_out <= x"0B";
            when x"9F" => data_out <= x"DB";
            when x"A0" => data_out <= x"E0";
            when x"A1" => data_out <= x"32";
            when x"A2" => data_out <= x"3A";
            when x"A3" => data_out <= x"0A";
            when x"A4" => data_out <= x"49";
            when x"A5" => data_out <= x"06";
            when x"A6" => data_out <= x"24";
            when x"A7" => data_out <= x"5C";
            when x"A8" => data_out <= x"C2";
            when x"A9" => data_out <= x"D3";
            when x"AA" => data_out <= x"AC";
            when x"AB" => data_out <= x"62";
            when x"AC" => data_out <= x"91";
            when x"AD" => data_out <= x"95";
            when x"AE" => data_out <= x"E4";
            when x"AF" => data_out <= x"79";
            when x"B0" => data_out <= x"E7";
            when x"B1" => data_out <= x"C8";
            when x"B2" => data_out <= x"37";
            when x"B3" => data_out <= x"6D";
            when x"B4" => data_out <= x"8D";
            when x"B5" => data_out <= x"D5";
            when x"B6" => data_out <= x"4E";
            when x"B7" => data_out <= x"A9";
            when x"B8" => data_out <= x"6C";
            when x"B9" => data_out <= x"56";
            when x"BA" => data_out <= x"F4";
            when x"BB" => data_out <= x"EA";
            when x"BC" => data_out <= x"65";
            when x"BD" => data_out <= x"7A";
            when x"BE" => data_out <= x"AE";
            when x"BF" => data_out <= x"08";
            when x"C0" => data_out <= x"BA";
            when x"C1" => data_out <= x"78";
            when x"C2" => data_out <= x"25";
            when x"C3" => data_out <= x"2E";
            when x"C4" => data_out <= x"1C";
            when x"C5" => data_out <= x"A6";
            when x"C6" => data_out <= x"B4";
            when x"C7" => data_out <= x"C6";
            when x"C8" => data_out <= x"E8";
            when x"C9" => data_out <= x"DD";
            when x"CA" => data_out <= x"74";
            when x"CB" => data_out <= x"1F";
            when x"CC" => data_out <= x"4B";
            when x"CD" => data_out <= x"BD";
            when x"CE" => data_out <= x"8B";
            when x"CF" => data_out <= x"8A";
            when x"D0" => data_out <= x"70";
            when x"D1" => data_out <= x"3E";
            when x"D2" => data_out <= x"B5";
            when x"D3" => data_out <= x"66";
            when x"D4" => data_out <= x"48";
            when x"D5" => data_out <= x"03";
            when x"D6" => data_out <= x"F6";
            when x"D7" => data_out <= x"0E";
            when x"D8" => data_out <= x"61";
            when x"D9" => data_out <= x"35";
            when x"DA" => data_out <= x"57";
            when x"DB" => data_out <= x"B9";
            when x"DC" => data_out <= x"86";
            when x"DD" => data_out <= x"C1";
            when x"DE" => data_out <= x"1D";
            when x"DF" => data_out <= x"9E";
            when x"E0" => data_out <= x"E1";
            when x"E1" => data_out <= x"F8";
            when x"E2" => data_out <= x"98";
            when x"E3" => data_out <= x"11";
            when x"E4" => data_out <= x"69";
            when x"E5" => data_out <= x"D9";
            when x"E6" => data_out <= x"8E";
            when x"E7" => data_out <= x"94";
            when x"E8" => data_out <= x"9B";
            when x"E9" => data_out <= x"1E";
            when x"EA" => data_out <= x"87";
            when x"EB" => data_out <= x"E9";
            when x"EC" => data_out <= x"CE";
            when x"ED" => data_out <= x"55";
            when x"EE" => data_out <= x"28";
            when x"EF" => data_out <= x"DF";
            when x"F0" => data_out <= x"8C";
            when x"F1" => data_out <= x"A1";
            when x"F2" => data_out <= x"89";
            when x"F3" => data_out <= x"0D";
            when x"F4" => data_out <= x"BF";
            when x"F5" => data_out <= x"E6";
            when x"F6" => data_out <= x"42";
            when x"F7" => data_out <= x"68";
            when x"F8" => data_out <= x"41";
            when x"F9" => data_out <= x"99";
            when x"FA" => data_out <= x"2D";
            when x"FB" => data_out <= x"0F";
            when x"FC" => data_out <= x"B0";
            when x"FD" => data_out <= x"54";
            when x"FE" => data_out <= x"BB";
            when x"FF" => data_out <= x"16";
            when others => data_out <= (others => '0');
        end case;
    end process;
end subox_arch;
