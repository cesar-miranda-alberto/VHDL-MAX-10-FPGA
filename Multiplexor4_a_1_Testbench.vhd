---------------------------------------------------------------------------------------------
-- 				***** MULTIPLEXOR 4 A 1 TESTBENCH *****			    -  					
--											    -																		  -
--	El presente código desarrollado en vhdl tiene como finalidad la implementación      -
-- 	de un Testbench para analizar el funcionamiento de un multiplexor 4 a 1 de una      -
--	longitud de un solo bit. Partiendo de un código previamente desarrollado.	    -
-- 			 								    -
-- 	Fecha: 09-Enero-2023								    -													  -
-- 	Versión: 1.0									    -
---------------------------------------------------------------------------------------------

library IEEE;															-- Incluye librerias relacionadas al IEEE
use IEEE.STD_LOGIC_1164.ALL;													-- Incluye libreria del IEEE

entity Multiplexor4_a_1_Testbench is												-- Creación de la entidad del testbench

end Multiplexor4_a_1_Testbench;													-- Fin del la entidad

architecture simple of Multiplexor4_a_1_Testbench is										-- Creación de la arquitectura 

	component Multiplexor4_a_1												-- Lista de componentes
					port(
							A : in STD_LOGIC;							-- Creación de puertos de entrada con longitud de un bit 
							B : in STD_LOGIC;
							C : in STD_LOGIC;
							D : in STD_LOGIC;
							Sel : in STD_LOGIC_VECTOR(1 downto 0);					-- Creación de puerto de entrada con longitud de dos bits
							Salida : out STD_LOGIC							-- Creación de puerto de salida
						);
					
	end component;														-- Fin de la lista de componentes
	
	signal A : STD_LOGIc:= '1';												-- Creación de signals correspondientes a la lista de componentes con estado lógico 
	signal B : STD_LOGIC:= '0';
	signal C : STD_LOGIC:= '1';
	signal D : STD_LOGIC:= '0';
	signal Sel : STD_LOGIC_VECTOR(1 downto 0);
	signal Salida : STD_LOGIC;
	
	begin															-- Inicio de la arquitectura
	
		U0: Multiplexor4_a_1 												-- Instanciación del Multiplexor
		port map(
					A => A,											-- Conexión de componentes del testbench con el multiplexor
					B => B,
					C => C,
					D => D,
					Sel => Sel,
					Salida => Salida
				);
		process											
		 begin														-- Inicio del proceso
		 
			Sel <="00";												-- Asigna valor al selector
			wait for 100 ns;											-- Establece retardo entre los cambios
			Sel <="01";
			wait for 100 ns;
			Sel <="10";
			wait for 100 ns;
			Sel <= "11";
			wait for 100 ns;
			wait;													-- Fin de los cambios
		end process;													-- Fin del proceso
		
end simple;															-- Fin de la arquitectura
					
