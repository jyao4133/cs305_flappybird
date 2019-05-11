--this process is a LUT which will drive the appropriate ledsegment bits
--based on the contents of the intermediate bcd signal
--(i.e. it is a BCD to 7seg decoder)
--inputs: bcd
--outputs: ledsegment
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity BCD_7SegDisplay is 
	port( bcd : in std_logic_vector(3 downto 0);
	ledsegment: out std_logic_vector(6 downto 0));

	end entity;

architecture behavior of BCD_7SegDisplay is
begin
	disp_decode_fn: 
	process(bcd)
	begin

		case  bcd is
			when "0000"=> ledsegment <=not "0111111";  -- '0'
			when "0001"=> ledsegment <=not"0000110";  -- '1'
			when "0010"=> ledsegment <=not"1011011";  -- '2'
			when "0011"=> ledsegment <=not"1001111";  -- '3'
			when "0100"=> ledsegment <=not"1100110";  -- '4' 
			when "0101"=> ledsegment <=not"1101101";  -- '5'
			when "0110"=> ledsegment <=not"1111101";  -- '6'
			when "0111"=> ledsegment <=not"0000111";  -- '7'
			when "1000"=> ledsegment <=not"1111111";  -- '8'
			when "1001"=> ledsegment <=not"1101111";  -- '9'
			 --nothing is displayed when a number more than 9 is given as input.
			when "1010"=> ledsegment <=not"1110111"; -- 'A'
			when "1011"=>ledsegment  <= not"1111100"; -- B
			when "1100" => ledsegment <=not "0111001"; -- C
			when "1101" => ledsegment <=not "1011110"; -- d
			when "1110" => ledsegment <= not"1111001"; -- E
			when "1111" => ledsegment <= not"1110001"; -- F
			
			when others=> ledsegment <=not"0111111";
		end case;
	end process;
end architecture behavior;