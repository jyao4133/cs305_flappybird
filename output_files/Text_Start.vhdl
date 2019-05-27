--Text Generator Start Screen
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
USE IEEE.numeric_std.all;
LIBRARY lpm;
USE lpm.lpm_components.ALL;

entity Text_Start is 
	port(
	pixel_row,pixel_column: in Std_logic_vector(9 downto 0);
	r_ball,g_ball,b_ball :out Std_LOGIC_vector(3 downto 0);
	Text_on : out Std_logic;
	character_add : out Std_logic_vector(5 downto 0);
	score_ones, score_tens,score_hundreds : in std_logic_vector(9 downto 0);
	health, energy : in std_LOGIC_vector(3 downto 0);
	state_num : in std_logic_vector (2 downto 0));
	
end entity;

architecture behavior of Text_Start is
Constant text_location:std_logic_vector(9 downto 0):= "0000010000";
Constant size: unsigned(5 downto 0):="010000";
signal pixel_rows : unsigned (9 downto 0);
signal pixel_cols : unsigned (9 downto 0);
signal unsigned_health : unsigned (3 downto 0);
begin
	pixel_rows <= unsigned (pixel_row);
	pixel_cols <= unsigned (pixel_column);
	unsigned_health <= unsigned (health);

	RGB_Display_Text: Process ( pixel_column, pixel_row)
	BEGIN
	
	if (state_num = "001") then
		if (pixel_rows >= (size * 10) and pixel_rows < (size * 12)) and pixel_cols >= (size * 10) and pixel_cols < (size *28) then
			if ( pixel_cols >= (size * 10) and pixel_cols < (size *12) ) then
				character_add <= "000110";
			elsif	( pixel_cols >= (size * 12) and pixel_cols < (size *14) ) then
				character_add <= "001100";
			elsif( pixel_cols >= (size * 14) and pixel_cols < (size *16)) then
				character_add <= "000001";
			elsif ( pixel_cols >= (size * 16) and pixel_cols < (size *18)) then
				character_add <= "010000";
			elsif ( pixel_cols >= (size * 18) and pixel_cols < (size *10)) then
				character_add <= "100000";
				
			elsif ( pixel_cols >= (size * 20) and pixel_cols < (size *22)) then
				character_add <= "000010";
			elsif ( pixel_cols >= (size * 22) and pixel_cols < (size *24)) then
				character_add <= "001001";
			elsif ( pixel_cols >= (size * 24) and pixel_cols < (size *26)) then
				character_add <= "010010";
			elsif ( pixel_cols >= (size * 26) and pixel_cols < (size *28)) then
				character_add <= "000100";			 
			end if;
					Text_on<='1';
		
		
		elsif (pixel_rows >= (size * 14) and pixel_rows < (size * 16)) and pixel_cols >= (size * 4) and pixel_cols < (size *34) then
		
			
			
			--LEFT
			if ( pixel_cols >= (size * 4) and pixel_cols < (size *6) ) then
				character_add <= "001100";
			elsif	( pixel_cols >= (size * 6) and pixel_cols < (size *8) ) then
				character_add <= "000101";
			elsif( pixel_cols >= (size * 8) and pixel_cols < (size *10)) then
				character_add <= "000110";
			elsif ( pixel_cols >= (size * 10) and pixel_cols < (size *12) ) then
				character_add <= "010100";
			elsif	( pixel_cols >= (size * 12) and pixel_cols < (size *14) ) then
				character_add <= "100000";
				
			--CLICK
			elsif( pixel_cols >= (size * 14) and pixel_cols < (size *16)) then
				character_add <= "000011";
			elsif ( pixel_cols >= (size * 16) and pixel_cols < (size *18)) then
				character_add <= "001100";
			elsif ( pixel_cols >= (size * 18) and pixel_cols < (size *20)) then
				character_add <= "001001";
			elsif ( pixel_cols >= (size * 20) and pixel_cols < (size *22)) then
				character_add <= "000011";
			elsif ( pixel_cols >= (size * 22) and pixel_cols < (size *24)) then
				character_add <= "001011";
			elsif ( pixel_cols >= (size * 24) and pixel_cols < (size *26)) then
				character_add <= "011111";
			
			--GAME
			elsif ( pixel_cols >= (size * 26) and pixel_cols < (size *28)) then
				character_add <= "000111";			 
			elsif ( pixel_cols >= (size * 28) and pixel_cols < (size *30)) then
				character_add <= "000001";			 
			elsif ( pixel_cols >= (size * 30) and pixel_cols < (size *32)) then
				character_add <= "001101";			 
			elsif ( pixel_cols >= (size * 32) and pixel_cols < (size *34)) then
				character_add <= "000101";			 
			end if;
					Text_on<='1';
			
		elsif (pixel_rows >= (size * 16) and pixel_rows < (size * 18)) and pixel_cols >= (size * 2) and pixel_cols < (size *36) then
		
			
			
			--RIGHT
			if ( pixel_cols >= (size * 2) and pixel_cols < (size *4) ) then
				character_add <= "010010";
			elsif	( pixel_cols >= (size * 4) and pixel_cols < (size *6) ) then
				character_add <= "001001";
			elsif( pixel_cols >= (size * 6) and pixel_cols < (size *8)) then
				character_add <= "000111";			 
			elsif ( pixel_cols >= (size * 8) and pixel_cols < (size *10) ) then
				character_add <= "001000";
			elsif	( pixel_cols >= (size * 10) and pixel_cols < (size *12) ) then
				character_add <= "010100";	
		
			--space
			elsif( pixel_cols >= (size * 12) and pixel_cols < (size *14)) then
				character_add <= "100000";
				
			--CLICK
			elsif( pixel_cols >= (size * 14) and pixel_cols < (size *16)) then
				character_add <= "000011";
			elsif ( pixel_cols >= (size * 16) and pixel_cols < (size *18)) then
				character_add <= "001100";
			elsif ( pixel_cols >= (size * 18) and pixel_cols < (size *20)) then
				character_add <= "001001";
			elsif ( pixel_cols >= (size * 20) and pixel_cols < (size *22)) then
				character_add <= "000011";
			elsif ( pixel_cols >= (size * 22) and pixel_cols < (size *24)) then
				character_add <= "001011";
			elsif ( pixel_cols >= (size * 24) and pixel_cols < (size *26)) then
				character_add <= "011111";
				
			--TRAIN
			elsif ( pixel_cols >= (size * 26) and pixel_cols < (size *28)) then
				character_add <= "010100";			 
			elsif ( pixel_cols >= (size * 28) and pixel_cols < (size *30)) then
				character_add <= "010010";		 
			elsif ( pixel_cols >= (size * 30) and pixel_cols < (size *32)) then
				character_add <= "000001";			 
			elsif ( pixel_cols >= (size * 32) and pixel_cols < (size *34)) then
				character_add <= "001001";
			elsif ( pixel_cols >= (size * 34) and pixel_cols < (size *36)) then
				character_add <= "001110";		 
			end if;
					Text_on<='1';
			

		else
			text_on <= '0';
		end if;
	elsif (state_num = "100") then
		if (pixel_rows >= (size * 10) and pixel_rows < (size * 12)) and pixel_cols >= (size * 10) and pixel_cols < (size *28) then
			--GAME
			if ( pixel_cols >= (size * 10) and pixel_cols < (size *12)) then
				character_add <= "000111";			 
			elsif ( pixel_cols >= (size * 12) and pixel_cols < (size *14)) then
				character_add <= "000001";			 
			elsif ( pixel_cols >= (size * 14) and pixel_cols < (size *16)) then
				character_add <= "001101";			 
			elsif ( pixel_cols >= (size * 16) and pixel_cols < (size *18)) then
				character_add <= "000101";	
				
			elsif( pixel_cols >= (size * 18) and pixel_cols < (size *20)) then
				character_add <= "100000";	
				
			--OVER
			elsif( pixel_cols >= (size * 20) and pixel_cols < (size *22)) then
				character_add <= "001111";	
			elsif( pixel_cols >= (size * 22) and pixel_cols < (size *24)) then
				character_add <= "010110";	
			elsif( pixel_cols >= (size * 24) and pixel_cols < (size *26)) then
				character_add <= "000101";	
			elsif( pixel_cols >= (size * 26) and pixel_cols < (size *28)) then
				character_add <= "010010";	
								
				
			end if;
			Text_on<='1';
		
		elsif (pixel_rows >= (size * 14) and pixel_rows < (size * 16)) and pixel_cols >= (size * 10) and pixel_cols < (size *28) then
			--SCORE
			if ( pixel_cols >= (size * 10) and pixel_cols < (size *12) ) then
				character_add <= "010011";
			elsif	( pixel_cols >= (size * 12) and pixel_cols < (size *14) ) then
				character_add <= "000011";
			elsif( pixel_cols >= (size * 14) and pixel_cols < (size *16)) then
				character_add <= "001111";			 
			elsif ( pixel_cols >= (size * 16) and pixel_cols < (size *18) ) then
				character_add <= "010010";
			elsif	( pixel_cols >= (size * 18) and pixel_cols < (size *20) ) then
				character_add <= "000101";	
				
			elsif( pixel_cols >= (size * 20) and pixel_cols < (size *22)) then
				character_add <= "100000";	
				
			elsif( pixel_cols >= (size * 22) and pixel_cols < (size *24)) then
				if (score_hundreds = "0000000000")then
					character_add <= "110000";

				elsif (score_hundreds = "0000000001")then
					character_add <= "110001";
					
				elsif (score_hundreds = "0000000010")then
					character_add <= "110010";
					
				elsif (score_hundreds = "0000000011")then
					character_add <= "110011";
					
				elsif (score_hundreds = "0000000100")then
					character_add <= "110100";
					
				elsif (score_hundreds = "0000000101")then
					character_add <= "110101";
					
				elsif (score_hundreds = "0000000110")then
					character_add <= "110110";
					
				elsif (score_hundreds = "0000000111")then
					character_add <= "110111";
					
				elsif (score_hundreds = "0000001000")then
					character_add <= "111000";
					
				elsif (score_hundreds = "0000001001")then
					character_add <= "111001";
				end if;	
			elsif( pixel_cols >= (size * 24) and pixel_cols < (size *26)) then
			
				if (score_tens = "0000000000")then
					character_add <= "110000";

				elsif (score_tens = "0000000001")then
					character_add <= "110001";
					
				elsif (score_tens = "0000000010")then
					character_add <= "110010";
					
				elsif (score_tens = "0000000011")then
					character_add <= "110011";
					
				elsif (score_tens = "0000000100")then
					character_add <= "110100";
					
				elsif (score_tens = "0000000101")then
					character_add <= "110101";
					
				elsif (score_tens = "0000000110")then
					character_add <= "110110";
					
				elsif (score_tens = "0000000111")then
					character_add <= "110111";
					
				elsif (score_tens = "0000001000")then
					character_add <= "111000";
					
				elsif (score_tens = "0000001001")then
					character_add <= "111001";
				end if;

			elsif( pixel_cols >= (size * 26) and pixel_cols < (size *28)) then

				if (score_ones = "0000000000")then
					character_add <= "110000";

				elsif (score_ones = "0000000001")then
					character_add <= "110001";
					
				elsif (score_ones = "0000000010")then
					character_add <= "110010";
					
				elsif (score_ones = "0000000011")then
					character_add <= "110011";
					
				elsif (score_ones = "0000000100")then
					character_add <= "110100";
					
				elsif (score_ones = "0000000101")then
					character_add <= "110101";
					
				elsif (score_ones = "0000000110")then
					character_add <= "110110";
					
				elsif (score_ones = "0000000111")then
					character_add <= "110111";
					
				elsif (score_ones = "0000001000")then
					character_add <= "111000";
					
				elsif (score_ones = "0000001001")then
					character_add <= "111001";
				end if;
			
	
			end if;
			text_on <= '1';
		


		elsif (pixel_rows >= (size * 20) and pixel_rows < (size * 22)) and pixel_cols >= (size * 2) and pixel_cols < (size *34) then
			--RIGHT
			if ( pixel_cols >= (size * 2) and pixel_cols < (size *4) ) then
				character_add <= "010010";
			elsif	( pixel_cols >= (size * 4) and pixel_cols < (size *6) ) then
				character_add <= "001001";
			elsif( pixel_cols >= (size * 6) and pixel_cols < (size *8)) then
				character_add <= "000111";			 
			elsif ( pixel_cols >= (size * 8) and pixel_cols < (size *10) ) then
				character_add <= "001000";
			elsif	( pixel_cols >= (size * 10) and pixel_cols < (size *12) ) then
				character_add <= "010100";	
		
			--space
			elsif( pixel_cols >= (size * 12) and pixel_cols < (size *14)) then
				character_add <= "100000";
				
			--CLICK
			elsif( pixel_cols >= (size * 14) and pixel_cols < (size *16)) then
				character_add <= "000011";
			elsif ( pixel_cols >= (size * 16) and pixel_cols < (size *18)) then
				character_add <= "001100";
			elsif ( pixel_cols >= (size * 18) and pixel_cols < (size *20)) then
				character_add <= "001001";
			elsif ( pixel_cols >= (size * 20) and pixel_cols < (size *22)) then
				character_add <= "000011";
			elsif ( pixel_cols >= (size * 22) and pixel_cols < (size *24)) then
				character_add <= "001011";
			elsif ( pixel_cols >= (size * 24) and pixel_cols < (size *26)) then
				character_add <= "011111";
				
			--TRAIN
			elsif ( pixel_cols >= (size * 26) and pixel_cols < (size *28)) then
				character_add <= "001101";			 
			elsif ( pixel_cols >= (size * 28) and pixel_cols < (size *30)) then
				character_add <= "000101";		 
			elsif ( pixel_cols >= (size * 30) and pixel_cols < (size *32)) then
				character_add <= "001110";			 
			elsif ( pixel_cols >= (size * 32) and pixel_cols < (size *34)) then
				character_add <= "010101";
 
			end if;
			Text_on<='1';
		else
			text_on<='0';
		end if;
	end if;
	
	end process;

end behavior;	