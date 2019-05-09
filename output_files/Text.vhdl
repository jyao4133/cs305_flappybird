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
	if ((pixel_rows >= (size * 0) and pixel_rows < (size * 1) and pixel_cols >= (size * 0) and pixel_cols < (size *1))) then
		character_add <= "010011";
--	character_add <= 
--	"010011" when (pixel_row >= (size * 0) and pixel_row < (size * 1) and pixel_column >= (size * 0) and pixel_col < (size *1)) else 
----	"000011" when (pixel_row >= (size * 0) and pixel_row < (size * 1) and pixel_column >= (size * 1) and pixel_col < (size *2)) else
----	"001111" when (pixel_row >= (size * 0) and pixel_row < (size * 1) and pixel_column >= (size * 2) and pixel_col < (size *3)) else
----	"010010" when (pixel_row >= (size * 0) and pixel_row < (size * 1) and pixel_column >= (size * 3) and pixel_col < (size *4)) else
----	"000101" when (pixel_row >= (size * 0) and pixel_row < (size * 1) and pixel_column >= (size * 4) and pixel_col < (size *5))
--	"100000";

	end if;


	--			
--		IF (pixel_row<=text_location) THEN --hardcoded to 
--				-- compare positive numbers only
----			Text_on <= '1';
----			
----			r_ball<='1';
----			
----			g_ball<='1';
----			b_ball<='1';
--		ELSE
----			Text_on <= '0';
----			r_ball<='0';
----			g_ball<='1';
----			b_ball<='0';
--		END IF;

		
	end process;

end behavior;	