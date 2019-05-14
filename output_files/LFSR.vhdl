LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
USE IEEE.numeric_std.all;
LIBRARY lpm;
USE lpm.lpm_components.ALL;

entity LFSR is 
	port ( 
		top_pipe, bottom_pipe : in std_logic_vector(9 downto 0); 
		clk : in std_logic;
		new_top_pipe, new_bottom_pipe : out std_logic_vector(9 downto 0)
	);
end entity;

architecture behavior of LFSR is 
	begin
		process(clk)
		variable temp : std_logic_vector(9 downto 0):="0001100100"; 
			begin
				if(rising_edge(clk))then
					temp(0):=temp(9);
					temp(1):=temp(0);
					temp(2):=temp(1)xor temp(9);
					temp(3):=temp(2);
					temp(4):=temp(3);
					temp(5):=temp(4);
					temp(6):=temp(5);
					temp(7):=temp(6);
					temp(8):=temp(7)xor temp(9);
					temp(9):=temp(8);
				end if;
			new_top_pipe<=temp;
		end process;
end architecture behavior;	