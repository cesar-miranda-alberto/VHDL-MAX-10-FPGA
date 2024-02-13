---------------------------------------------------------------------------------------------
-- 				***** NOMBRE COMPUERTAS LÓGICAS *****			    -
--											    -
--	El presente código desarrollado en vhdl tiene como finalidad la implementación      -
--  	de mapas de karnaugh a través los displays siete segmentos exhibiendo el nombre	    -
--	CESAR partiendo de las ecuaciones boleanas. El proyecto esta desarrollado e 	    -	
--	implementado para un FPGA MAX 10.						    -
--											    -
--      Fecha: 09-Enero-2023								    -
-- 	Versión: 1.0									    -
---------------------------------------------------------------------------------------------

library IEEE;													-- Incluye librerias relacionadas al IEEE
use IEEE.STD_LOGIC_1164.ALL;											-- Agrega biblioteca del IEEE

entity Nombre_Compuertas_Logicas is										-- Creación de lista de puertos de entrada y salida
			port(
					x : in STD_LOGIC;
					y : in STD_LOGIC;
					z : in STD_LOGIC;
					A : out STD_LOGIC;
					B : out STD_LOGIC;
					C : out STD_LOGIC;
					D : out STD_LOGIC;
					E : out STD_LOGIC;
					F : out STD_LOGIC;
					G : out STD_LOGIC
			);
end Nombre_Compuertas_Logicas;											-- Fin de la entidad

architecture simple of Nombre_Compuertas_Logicas is								-- Creación de la arquitectura
begin
														-- Ecuaciones boleanas
			A <= not ((not x) or (not y and (not z)));
			B <= not ((not x) and y and z);
			C <= not ((not x) and y);
			D <= not ((not x and not y) or (not x and not z));
			E <= not ((not x and not y) or (not y and not z));
			F <= not ((not x) or (not y and not z));
			G <= not ((not x and z) or (not x and y));

end simple;													-- Fin de la arquitectura
