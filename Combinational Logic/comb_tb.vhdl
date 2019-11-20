library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity comboio_tb is
end;

architecture bench of comboio_tb is

  component comboio
  	port(	a,b,c: in std_logic;
  		y: out std_logic);
  end component;

  signal a,b,c: std_logic;
  signal y: std_logic;

begin

  uut: comboio port map ( a => a,
                          b => b,
                          c => c,
                          y => y );

  stimulus: process
  begin
  	a <= '0';
	b <= '0';
	c <= '0';
	wait for 1000 ns;
	a <= '0';
	b <= '0';
	c <= '1';
	wait for 1000 ns;
	a <= '0';
	b <= '1';
	c <= '0';
	wait for 1000 ns;
	a <= '0';
	b <= '1';
	c <= '1';
	wait for 1000 ns;
	a <= '1';
	b <= '0';
	c <= '0';
	wait for 1000 ns;
	a <= '1';
	b <= '0';
	c <= '1';
	wait for 1000 ns;
	a <= '1';
	b <= '1';
	c <= '0';
	wait for 1000 ns;
	a <= '1';
	b <= '1';
	c <= '1';
	wait for 1000 ns;
    wait;
  end process;


end;
