--Text Generator Game
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
USE IEEE.numeric_std.all;
LIBRARY lpm;
USE lpm.lpm_components.ALL;

entity Text is 
	port(
	pixel_row,pixel_column: in Std_logic_vector(9 downto 0);
	r_ball,g_ball,b_ball :out Std_LOGIC_vector(3 downto 0);
	Text_on : out Std_logic;
	character_add : out Std_logic_vector(5 downto 0);
	score_ones, score_tens : in std_logic_vector(9 downto 0);
	health, energy : in std_LOGIC_vector(3 downto 0));
end entity;

architecture behavior of Text is
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
	if (pixel_rows >= (size * 0) and pixel_rows < (size * 1)) and pixel_cols >= (size * 0) and pixel_cols < (size *7) then
		if ( pixel_cols >= (size * 0) and pixel_cols < (size *1) ) then
			character_add <= "010011";
		elsif	( pixel_cols >= (size * 1) and pixel_cols < (size *2) ) then
			character_add <= "000011";
		elsif( pixel_cols >= (size * 2) and pixel_cols < (size *3)) then
			character_add <= "001111";
		elsif ( pixel_cols >= (size * 3) and pixel_cols < (size *4)) then
			character_add <= "010010";
		elsif ( pixel_cols >= (size * 4) and pixel_cols < (size *5)) then
			character_add <= "000101";
		--score tens
		elsif ( pixel_cols >= (size * 5) and pixel_cols < (size *6)) then
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
		--score ones
	
		elsif ( pixel_cols >= (size * 6) and pixel_cols < (size *7)) then
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
		Text_on<='1';
	elsif ((pixel_rows >= (size * 1) and pixel_rows < (size * 2)) and pixel_cols >= (size * 0) and pixel_cols < (size * unsigned_health)) then
		if ( pixel_cols >= (size * 0) and pixel_cols < (size *1)) AND (health > 0) then
			character_add <= "000000";
		elsif	( pixel_cols >= (size * 1) and pixel_cols < (size *2)) AND (health > 1) then
			character_add <= "000000";
		elsif( pixel_cols >= (size * 2) and pixel_cols < (size *3)) AND (health > 2) then
			character_add <= "000000";
		elsif ( pixel_cols >= (size * 3) and pixel_cols < (size *4)) AND (health > 3) then
			character_add <= "000000";
		elsif ( pixel_cols >= (size * 4) and pixel_cols < (size *5)) AND (health > 4) then
			character_add <= "000000";
		end if;
			Text_on<='1';

	else
		Text_on<='0';-- if we do this ball goes away and whole screen has red background
	end if;
	--0-9 is 48 to 57
	
	
		
	end process;

end behavior;	