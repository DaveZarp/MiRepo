library ieee;
use ieee.std_logic_1164.all;

Entity sumador2 is 
Port( ENTRADA: in	 std_logic_vector(2 downto 0); -- A|B|Cin
	S,Cout : 	out std_logic
);

end entity;

architecture behavior of sumador2 is 

signal aux: bit;
begin

-- Sentencia When Else -- 
	S <= 	'0' when ENTRADA = "000" else 
			'1' when ENTRADA = "001" else 
			'1' when ENTRADA = "010" else 
			'0' when ENTRADA = "011" else 
			'1' when ENTRADA = "100" else 
			'0' when ENTRADA = "101" else 
			'0' when ENTRADA = "110" else 
			'1' when ENTRADA = "111";

			-- Sentencia When Else -- 
	Cout <= 	'0' when ENTRADA = "000" else 
			'0' when ENTRADA = "001" else 
			'0' when ENTRADA = "010" else 
			'1' when ENTRADA = "011" else 
			'0' when ENTRADA = "100" else 
			'1' when ENTRADA = "101" else 
			'1' when ENTRADA = "110" else 
			'1' when ENTRADA = "111";
	

end behavior;