library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.Numeric_Std.all;

-- Add two 32 bit numbers without carry

entity addio is
	port(	a,b: in std_logic_vector(31 downto 0); -- 32 bit numbers are declared as logic vectors.
		    y: out std_logic_vector(31 downto 0));
end;

architecture add of addio is
begin
	y <= a + b;
end;
