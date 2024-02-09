library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decodificador_Binario_Decimal_Testbench is

end Decodificador_Binario_Decimal_Testbench;

architecture simple of Decodificador_Binario_Decimal_Testbench is

					component Decodificador_Binario_Decimal
								 port(
											 B : in STD_LOGIC_VECTOR(3 downto 0);
											 D : out STD_LOGIC_VECTOR(6 downto 0)
								 );
					end component;
					
					signal B : STD_LOGIC_VECTOR(3 downto 0);
					signal D : STD_LOGIC_VECTOR(6 downto 0);
					
					begin
					
					U0: Decodificador_Binario_Decimal port map(
								B => B,
								D => D
					);
					
					process begin
						B <= "0000";																									-- Asigna valor al vector de entrada
						wait for 100 ns;																								-- Establece retardo entre las asignaciones
						B <= "0001";
						wait for 100 ns;
						B <= "0010";
						wait for 100 ns;
						B <= "0011";
						wait for 100 ns;
						B <= "0100";
						wait for 100 ns;
						B <= "0101";
						wait for 100 ns;
						B <= "0110";
						wait for 100 ns;
						B <= "0111";
						wait for 100 ns;
						B <= "1000";
						wait for 100 ns;
						B <= "1001";
						wait;
						end process;
						
			end simple;