---------------------------------------------------------------------------------------------
-- 					***** COMPUERTAS LÓGICAS *****			     										  -
--											    																		  -
--	El presente código desarrollado en vhdl tiene como finalidad la implementación           -
-- de un decodificador de formato binario a decimal y cuyos valores serán exhibidos			  -
-- en un display siete segmentos cátodo común de un FPGA MAX10.								     -
--      Fecha: 07-Enero-2023								    												  -
-- 	Versión: 1.0									    														  -
---------------------------------------------------------------------------------------------
		 
		 
library IEEE;																										  -- Incluye librerias correspondientes del IEEE
use IEEE.STD_LOGIC_1164.ALL;																					  -- Incluye libreria IEEE a utilizar

entity Decodificador_Binario_Decimal is																	  -- Creación de la entidad del decodificador
			port(
					B : in STD_LOGIC_VECTOR (3 downto 0);											        -- Declaración de puerto de entrada tipo vector con longitud de cuatro bits
					D : out STD_LOGIC_VECTOR (6 downto 0)													  -- Declaración de puerto de salida tipo vector con longitud de siete bits (DISPLAY 7 SEGMENTOS)
			);
end Decodificador_Binario_Decimal;																			  -- Fin de la entidad

architecture simple of Decodificador_Binario_Decimal is												  -- Creación simple de la arquitectura de la entidad
begin																													  -- Inicio de la arquitectura

			process (B) is																							  -- Proceso que evalua los valores del puerto de entrada
			begin 
			
				case B is 																							  -- Casos con valores del puerto de entrada 
				  
					when "0000" => D <= "0000001"; 															  -- 0
					when "0001" => D <= "1001111";															  -- 1
					when "0010" => D <= "0010010";															  -- 2
					when "0011" => D <= "0000110";															  -- 3
					when "0100" => D <= "1001100";															  -- 4
					when "0101" => D <= "0100100";															  -- 5
					When "0110" => D <= "0100000";															  -- 6
					when "0111" => D <= "0001111";															  -- 7
					when "1000" => D <= "0000000";															  -- 8
					when "1001" => D <= "0001100";													        -- 9
					
					when others => D <= "1111111"; 															  -- APAGADO DEL DISPLAY
				
			    end case;																							  -- Fin de los casos
			end process;																							  -- Fin del proceso
			
end simple;																											  -- Fin de la arquitectura