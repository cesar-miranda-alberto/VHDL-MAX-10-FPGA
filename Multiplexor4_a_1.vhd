-------------------------------------------------------------------------------------------------
-- 					***** MULTIPLEXOR 4 a 1 *****				-	    					 
--											        -																		  -
--	El presente código desarrollado en vhdl tiene como finalidad la implementación de un    -
-- 	multiplexor 4 a 1 es decir cuatro entradas y una sola salida, tomando en cuenta la      -
--	longitud de las salidas la cual es de un solo bit. El código ha sido implementado en    -
-- 	testbench para analizar el funcionamiento al igual que en físico a través de un FPGA    -
--												-
-- 	Fecha: 09-Enero-2023								    	-													  -
-- 	Versión: 1.0									    	-														  -
-------------------------------------------------------------------------------------------------

library IEEE;														-- Incluye las librerias relacionadas al IEEE
use IEEE.STD_LOGIC_1164.ALL;												-- Incluye libreria 
 
 entity Multiplexor4_a_1 is												-- Creación de la entidad
			port(												-- Lista de puertos de la entidad
					A : in STD_LOGIC;								-- Creación de puertos de entrada
					B : in STD_LOGIC;
					C : in STD_LOGIC;
					D : in STD_LOGIC;
					Sel : in STD_LOGIC_VECTOR(1 downto 0);						-- Creación de puerto de entrada para el selector
					Salida : out STD_LOGIC								-- Creación del puerto de salida
			);
end Multiplexor4_a_1;													-- Fin de la entidad

architecture simple of MUltiplexor4_a_1 is 										-- Creación de la arquitectura de la entidad
	begin														-- Inicio de la arquitectura
	
			process(Sel)											-- Proceso conforme al selector
				begin
					
					case Sel is									-- Case que evalua el valor del selector
						
							when "00" => Salida <= A;					-- Casos con los valores del selector y su asignamiento correspondiente
							when "01" => Salida <= B;
							when "10" => Salida <= C;
							when "11" => Salida <= D;
							when others => Salida <='1';					-- Caso asignado por defecto	
					
					end case;									-- Fin de los casos
					end process;									-- Fin del proceso
					
end simple;														-- Fin de la arquitectura
		
