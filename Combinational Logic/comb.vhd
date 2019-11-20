library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;
use IEEE.Numeric_Std.all;

-- Y = A'B'C' + AB'C'

entity comboio is
	port(	a,b,c: in std_logic;
		y: out std_logic);
end;

architecture combo of comboio is
begin
	y <= ((not a) and (not b) and (not c)) or (a and (not b) and (not c));
end;
