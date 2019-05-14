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
	r_ball,g_ball,b_ball,Text_on :out Std_LOGIC;
	character_add : out Std_logic_vector(5 downto 0));
end entity;

architecture behavior of Text is
Constant text_location:std_logic_vector(9 downto 0):= "0000010000";
Constant size: unsigned(5 downto 0):="010000";
signal pixel_rows : unsigned (9 downto 0);
signal pixel_cols : unsigned (9 downto 0);
begin
	pixel_rows <= unsigned (pixel_row);
	pixel_cols <= unsigned (pixel_column);

	RGB_Display_Text: Process ( pixel_column, pixel_row)
	BEGIN
	if (pixel_rows >= (size * 0) and pixel_rows < (size * 1)) and pixel_cols >= (size * 0) and pixel_cols < (size *5) then
		if ( pixel_cols >= (size * 0) and pixel_cols < (size *1) ) then
			character_add <= "010011";
		elsif	( pixel_cols >= (size * 1) and pixel_cols < (size *2) ) then
			character_add <= "000000";
		elsif( pixel_cols >= (size * 2) and pixel_cols < (size *3)) then
			character_add <= "001111";
		elsif ( pixel_cols >= (size * 3) and pixel_cols < (size *4)) then
			character_add <= "010010";
		elsif ( pixel_cols >= (size * 4) and pixel_cols < (size *5)) then
			character_add <= "000101";
		end if;
		Text_on<='1';
	else
		Text_on<='0';-- if we do this ball goes away and whole screen has red background
	end if;


	
		
	end process;

end behavior;	