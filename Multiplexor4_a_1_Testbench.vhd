library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexor4_a_1_Testbench is

end Multiplexor4_a_1_Testbench;

architecture simple of Multiplexor4_a_1_Testbench is

	component Multiplexor4_a_1
					port(
							A : in STD_LOGIC;
							B : in STD_LOGIC;
							C : in STD_LOGIC;
							D : in STD_LOGIC;
							Sel : in STD_LOGIC_VECTOR(1 downto 0);
							Salida : out STD_LOGIC
						);
					
	end component;
	
	signal A : STD_LOGIc:= '1';
	signal B : STD_LOGIC:= '0';
	signal C : STD_LOGIC:= '1';
	signal D : STD_LOGIC:= '0';
	signal Sel : STD_LOGIC_VECTOR(1 downto 0);
	signal Salida : STD_LOGIC;
	
	begin
	
		U0: Multiplexor4_a_1 
		port map(
					A => A,
					B => B,
					C => C,
					D => D,
					Sel => Sel,
					Salida => Salida
				);
		process
		 begin
		 
			Sel <="00";
			wait for 100 ns;
			Sel <="01";
			wait for 100 ns;
			Sel <="10";
			wait for 100 ns;
			Sel <= "11";
			wait;
			
		end process;
		
end simple;
					