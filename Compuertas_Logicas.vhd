---------------------------------------------------------------------------------------------
-- 					***** COMPUERTAS LÓGICAS *****			    -
--											    -
--	El presente código desarrollado en vhdl tiene como finalidad la implementación      -
--  	de las compuertas lógicas para posteriormete desarrollar el testbench,		    -
--	correspondiente.								    -
--      Fecha: 07-Enero-2023								    -
-- 	Versión: 1.0									    -
---------------------------------------------------------------------------------------------

library IEEE;																				-- Incluye librerias correspondientes del IEEE
use IEEE.std_logic_1164.all;																		-- Agrega la libreria del IEEE a utilizar

entity Compuertas_Logicas is																		-- Creación de la entidad y asignación de nombre
		port(																			-- Inicio de declaración de puertos de entrada y salida
				A : in STD_LOGIC;															-- Entrada de un bit
				B : in STD_LOGIC;
				RNOT : out STD_LOGIC;															-- Salida de un bit
				RAND : out STD_LOGIC;
				RNAND : out STD_LOGIC;
				REOR  : out STD_LOGIC;
				RNOR  : out STD_LOGIC;
				RXOR  : out STD_LOGIC;
				RXNOR : out STD_LOGIC 
				);
end Compuertas_Logicas;																			-- Fin de la entidad 

architecture simple of Compuertas_Logicas is																-- Declaración "SIMPLE" de la arquitectura 
begin																					-- Inicio de la arquitectura
		RNOT <= not (A);																	-- Ejecuta las compuertas lógicas dentro de la arquitectura y asigna el resultado a los puertos de salida
		RAND <= A and B;
		RNAND <= A nand B;
		REOR <= A or B;
		RNOR <= A nor B;
		RXOR <= A xor B;
		RXNOR <= A xnor B;	 																					
		
end simple;																				-- Fin de la arquitectura
