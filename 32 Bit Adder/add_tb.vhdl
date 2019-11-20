library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity add_tb is
end;

architecture bench of add_tb is

  component addio
  	port(	a,b: in std_logic_vector(31 downto 0);
  		y: out std_logic_vector(31 downto 0));
  end component;

  signal a,b: std_logic_vector(31 downto 0);
  signal y: std_logic_vector(31 downto 0);

begin

  uut: addio port map ( a => a,
                          b => b,
                          y => y );

  stimulus: process
  begin
  	a <= "00000000000000000000000000000000";
	b <= "00000000000000000000000000000000";
	wait for 1000 ns;
  	a <= "00000000000000000000000000000000";
	b <= "00000000000000000000000000000001";
	wait for 1000 ns;
  	a <= "00000000000000000000000000000000";
	b <= "00000000000000000000000011000000";
	wait for 1000 ns;
  	a <= "00000000000000000000000111000000";
	b <= "00000000000000000000000011000000";
	wait for 1000 ns;
  	a <= "00000000000110000000000111000000";
	b <= "00000000000000000000000011000000";
	wait for 1000 ns;
  	a <= "00000011000000000000000111111111";
	b <= "00000010011000000000000011000000";
	wait for 1000 ns;
    wait;
  end process;


end;
