--------------------------------------------------------------------------------------------------
-- 					***** COMPUERTAS LÓGICAS TESTBENCH *****	         -
--												 -
--      El presente código desarrollado en vhdl tiene como finalidad la implementación	         -
--  	del testbech correspondiente a las compuertas lógicas en vhdl desarrollado		 -
--	anteriormente, con el fin de analizar el funcionamiento .			         -
-												 -
--      Fecha: 07-Enero-2023									 -	
-- 	Versión: 1.0									         -
--------------------------------------------------------------------------------------------------

library IEEE;																	  -- Incluye librerias correspondientes del IEEE
use IEEE.STD_LOGIC_1164.ALL;															  -- Agrega la libreria del IEEE a utilizar

entity Compuertas_Logicas_Testbench is														  -- Creación de la entidad correspondiente al Testbench

end Compuertas_Logicas_Testbench;														  -- Fin de la entidad del testbench

architecture simple of Compuertas_Logicas_Testbench is												  -- Inicio de la arquitectura simple correspondiente a la entidad

 component Compuertas_Logicas															  -- Lista de componentes
		port( 																  -- Inicio de los puertos
				A : in STD_LOGIC;												  -- Puertos de entrada de un solo bit
				B : in STD_LOGIC;
				RNOT : out STD_LOGIC;												  -- Puertos de salida de un solo bit
				RAND : out STD_LOGIC;
				RNAND : out STD_LOGIC;
				REOR  : out STD_LOGIC;
				RNOR  : out STD_LOGIC;
				RXOR  : out STD_LOGIC;
				RXNOR : out STD_LOGIC 
			);
end component;																	  -- Fin de la lista de componentes 

signal A : STD_LOGIC:= '0';															  -- Creación de las señales de entrada tipo signal con valor inicial
signal B : STD_LOGIC:= '0';
	
signal RNOT  : STD_LOGIC;															  -- Creación de las señales de entrada tipo signal
signal RAND  : STD_LOGIC;
signal RNAND : STD_LOGIC;
signal REOR  : STD_LOGIC;
signal RNOR  : STD_LOGIC;
signal RXOR  : STD_LOGIC;
signal RXNOR : STD_LOGIC;

begin 																		  -- Inicio de la arquitectura
U0: Compuertas_Logicas Port map (														  -- Instanciación de la entidad Compuertas_Logicas
	A => A,																	  -- Conexión de los puertos de la entidad Compuertas_Logicas_Testbench con la entidad Compuertas_Logicas
	B => B,
	RNOT  => RNOT,
	RAND  => RAND,
	RNAND => RNAND,
	REOR  => REOR,
	RNOR  => RNOR,
	RXOR  => RXOR,
	RXNOR => RXNOR	
);

process begin																          -- Inicio del process

	A <= '0';																  -- Valores asignados a los puertos de entrada
	B <= '0';
	wait for 100 ns;															  -- Retardo para generar cambios en valores de las señales
	A <= '1';
	B <= '0';
	wait for 100 ns;
	A <= '0';
	B <= '1';
	Wait for 100 ns;
	A <= '1';
	B <= '1';
	wait;
	
	end process;															         -- Fin del process
end simple; 																         -- Fin de la arquitectura simple
