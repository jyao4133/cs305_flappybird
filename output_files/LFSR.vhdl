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
	signal linear_feedback :std_logic;
   signal count           :std_logic_vector (9 downto 0);

	begin
	   linear_feedback <= not(count(6) xor count(3) xor count(4));

		process(clk)
			begin
			if (rising_edge(clk))then
                count <= (count(8) &count(7) &count(6) & count(5) & count(4) & count(3) 
                          & count(2) & count(1) & count(0) & 
                          linear_feedback);
								  
			end if;
			
			

		end process;
		
		new_top_pipe<=count;

end architecture behavior;	