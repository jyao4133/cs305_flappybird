LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;
LIBRARY work;
USE work.de0core.all;
entity MouseREG is
	port (

				  mouse_in,clk :in std_logic;
				  mouse_out:out std_logic
				  
			);
end entity;

architecture behavior of MouseREG is 

begin
	process(mouse_in,clk)
		variable Pressed  : std_logic;
		variable Released : std_logic;
		variable count : std_logic_vector(15 downto 0) := "0000000000000000";
		begin 
			if(rising_edge(clk)) then
--				pressed := mouse_in;
--				if (pressed='1') then
--					if mouse_in='0' then
--						if (count > "0000000000000100") then
--							Pressed:='0';
--							count := "0000000000000000";
--						end if;
--					end if;
--				
--				
--				elsif(mouse_in='1') then 
--					Pressed :='1'; 
--				end if;
--				count := count + 1;
				mouse_out <= pressed;
				count := count +1;

				
				if (count > "0000000010000000") then
					pressed := mouse_in;
					count := "0000000000000000";

					mouse_out <= '0';
				end if;


			end if;
			
	end process;
end architecture behavior;	
				
				
			
