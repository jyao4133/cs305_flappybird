LIBRARY ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
--This is a priority mux which chooses the configuration of loading elements on the vga screen
--Inputs: RGB Values from each relement and Enable Signal from each element
entity collision_mux is
	port ( 
	
		collision_on : out std_logic;
		clk,pipe_on,ball_on : in std_logic;
		pipe_x :in std_logic_vector(10 downto 0);
		pipe2_on : in std_logic;
		pipe2_x : in std_logic_vector(10 downto 0));

		
end collision_mux;

Architecture render of collision_mux is
	Signal tmp_c: std_logic:='0';
	begin	
		
		process(pipe_on, ball_on, pipe_x)
			begin

				if (pipe_on /= '0' AND ball_on /= '0' and pipe_x < "00101010100" and pipe_x > "00100101100") then
					tmp_c <= '1';
				
				
				elsif (pipe2_on /= '0' AND ball_on /= '0' and pipe2_x < "00101010100" and pipe2_x > "00100101100") then
					tmp_c <= '1';
				
				else 
					tmp_c <= '0';

				end if;

		end process;
		
		collision_on<=tmp_c;
end architecture render;
		