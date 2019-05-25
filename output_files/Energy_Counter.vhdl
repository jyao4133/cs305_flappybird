LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
USE IEEE.numeric_std.all;
LIBRARY lpm;
USE lpm.lpm_components.ALL;

entity Energy_Counter is 
	port(
	pixel_row,pixel_column: in Std_logic_vector(9 downto 0);
	r_energy,g_energy,b_energy :out Std_LOGIC_vector(3 downto 0);
	Energy_on : out Std_logic;
	newEnergy : in std_LOGIC_vector(6 downto 0));
   
end entity;

architecture behavior of Energy_Counter is
Constant text_location:std_logic_vector(9 downto 0):= "0000010000";
Constant size: unsigned(5 downto 0):="010000";
signal pixel_rows,pixel_cols : unsigned (9 downto 0);
signal current_energy : unsigned (6 downto 0);
begin

	pixel_rows <= unsigned (pixel_row);
	pixel_cols <= unsigned (pixel_column);
	current_energy <= unsigned (newEnergy);
	

	RGB_Display_Energy: Process ( pixel_column, pixel_row)
	BEGIN
		if (pixel_rows >= (size * 0) and pixel_rows < (size * 1)) and pixel_cols >= (size * 30) and pixel_cols < (size *current_energy) then
		
			r_energy <= "1111";
			Energy_on <= '1';
		else
			r_energy <= "0000";
			Energy_on <= '0';

		end if;
		
	
		
	end process;

end behavior;	