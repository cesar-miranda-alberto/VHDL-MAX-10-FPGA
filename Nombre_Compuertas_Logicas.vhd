library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Nombre_Compuertas_Logicas is
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
end Nombre_Compuertas_Logicas;

architecture simple of Nombre_Compuertas_Logicas is
begin

			A <= not ((not x) or (not y and (not z)));
			B <= not ((not x) and y and z);
			C <= not ((not x) and y);
			D <= not ((not x and not y) or (not x and not z));
			E <= not ((not x and not y) or (not y and not z));
			F <= not ((not x) or (not y and not z));
			G <= not ((not x and z) or (not x and y));

end simple;