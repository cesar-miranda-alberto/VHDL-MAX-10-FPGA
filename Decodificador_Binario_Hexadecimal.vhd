--------------------------------------------------------------------------------------------------
-- 			***** DECODIFICADOR BINARIO - HEXADECIMAL *****		                 -	    					
--											    	 -																		  -
--	El presente código desarrollado en vhdl tiene como finalidad la implementación           -
-- 	de un decodificador Binario a Hexadecimal el cual será implementado en un FPGA		 -
-- 	MAX 10 donde el número en hexadecimal será exhibido en un display siete segmentos	 -
-- 	cabe hacer mención que este código esta orientado para el exhibidor de siete segmentos	 -
--	cátodo común por lo que solo aplica con estos displays.					 -
--												 -																		  -
--	 Fecha: 08-Enero-2023								    	 -
--	 Versión: 1.0									         -
--------------------------------------------------------------------------------------------------

library IEEE;																-- Incluye librerias correspondientes del IEEE				
use IEEE.std_logic_1164.all;						         							-- Agrega la libreria del IEEE a utilizar

entity Decodificador_Binario_Hexadecimal is												-- Creación de la entidad
			port(
					B : in STD_LOGIC_VECTOR(3 downto 0);								-- Puerto de entrada de cuatro bits correspondiente al valor en binario
					H : out STD_LOGIC_VECTOR(6 downto 0)								-- Puerto de salida H de seis bits correspondiente al display siete segmentos
			);
end Decodificador_Binario_Hexadecimal;													-- Fin de la entidad

architecture simple of Decodificador_Binario_Hexadecimal is										-- Declaración de la arquitectura de la entidad
begin

		process (B) 
	   	begin															-- Inicio del proceso dentro de la arquitectura
			
				case B is 												-- Evaluación de valores del puerto de entrada B
					
						when "0000" => H <= "0000001"; 								-- 0
						when "0001" => H <= "1001111";								-- 1
						when "0010" => H <= "0010010";								-- 2
						when "0011" => H <= "0000110";								-- 3
						when "0100" => H <= "1001100";								-- 4
						when "0101" => H <= "0100100";								-- 5
						When "0110" => H <= "0100000";								-- 6
						when "0111" => H <= "0001111";								-- 7
						when "1000" => H <= "0000000";								-- 8
						when "1001" => H <= "0001100";								-- 9
						when "1010" => H <= "0001000";								-- A
						when "1011" => H <= "1100000";								-- B
						when "1100" => H <= "0110001";								-- C
						when "1101" => H <= "1000010";								-- D
						when "1110" => H <= "0110000";								-- E
						when "1111" => H <= "0111000";								-- F
						
						when others => H <= "1111111";								-- APAGADO
						
				end case;												-- Fin de los casos
				end process;												-- Fin del procesos
				
	end simple;															-- Fin de la arquitectura
