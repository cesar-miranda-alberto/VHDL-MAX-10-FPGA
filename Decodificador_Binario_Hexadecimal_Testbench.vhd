----------------------------------------------------------------------------------------------------
-- 					***** DECODIFICADOR BINARIO - HEXADECIMAL *****	 	   -
--											           -  																		  -
--	El presente código desarrollado en vhdl tiene como finalidad la implementación             -
-- 	de un Testbench para analizar el funcionamiento de un decodificador binario a	           -
--	hexadecimal implementado en FPGA MAX 10. Cabe hacer mención que los valores contenidos	   -
-- 	para el formato hexadecimal se muestran en los displays siete segmentos por lo 	           -
-- 	que en el testbench el valor no será el equivalente solamente en físico.	           -
--												   -
-- 	Fecha: 08-Enero-2023								           -
-- 	Versión: 1.0									           -
----------------------------------------------------------------------------------------------------

library IEEE;															-- Incluye todas las librerias correspondientes al IEEE
use IEEE.std_logic_1164.all;													-- Incluye la libreria a utilizar				

entity Decodificador_Binario_Hexadecimal_Testbench is										-- Creación de la entidad para el Testbench

end entity;															-- Fin de la entidad

architecture simple of Decodificador_Binario_Hexadecimal_Testbench is								-- Creación simple de la arquitectura de la entidad

	component Decodificador_Binario_Hexadecimal										-- Creación de lista de componentes de la entidad del testbench
					port(
							B : in STD_LOGIC_VECTOR(3 downto 0);					-- Declaración de puerto de entrada tipo vector con una longitud de cuatro bits
							H : out STD_LOGIC_VECTOR(6 downto 0)					-- Declaración de puerto de salida tipo vector con una longitud de siete bits
					);
	end component;														-- Fin de la lista de componentes
	
	signal B : STD_LOGIC_VECTOR(3 downto 0);										-- Creación de signals para los componentes
	signal H : STD_LOGIC_VECTOR(6 downto 0);
	
	begin															-- Inicio de la arquitectura
	
	U0: Decodificador_Binario_Hexadecimal port map(										-- Instanciación de la entidad Decodificador_Binario_Hexadecimal
			B => B,													-- Conexión entre los puertos del Testbench y el Decodificador
			H => H
	);
	
	process begin														-- Inicio del proceso
		B <= "0000";													-- Asigna valor al vector de entrada
		wait for 100 ns;												-- Establece retardo entre las asignaciones
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
		wait for 100 ns;
		B <= "1010";
		wait for 100 ns;
		B <= "1011";
		wait for 100 ns;
		B <= "1100";
		wait for 100 ns;
		B <= "1101";
		wait for 100 ns;
		B <= "1110";
		wait for 100 ns;
		B <= "1111";
		wait;
		end process;													-- Fin del proceso
		
	end simple;														-- Fin de la arquitectura
