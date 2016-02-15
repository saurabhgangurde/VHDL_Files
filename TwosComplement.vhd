library ieee;
use ieee.std_logic_1164.all;

library std;
use std.textio.all;
use std.standard.all;

library work;
use work.EE224_Components.all;

entity TwosComplement is
   port( X: in std_logic_vector(7 downto 0);
  Y: out std_logic_vector(7 downto 0));
end entity;
architecture invert  of TwosComplement  is
   signal mask:std_logic_vector(7 downto 0);signal temp:std_logic_vector(7 downto 0);
   
begin

	mask<=( 7 downto 1 =>'0', 0=>'1');
	in0: INVERTER port map (a=>X(0) , b=>temp(0));
	in1: INVERTER port map (a=>X(1) , b=>temp(1));
	in2: INVERTER port map (a=>X(2) , b=>temp(2));
	in3: INVERTER port map (a=>X(3) , b=>temp(3));
	in4: INVERTER port map (a=>X(4) , b=>temp(4));
	in5: INVERTER port map (a=>X(5) , b=>temp(5));
	in6: INVERTER port map (a=>X(6) , b=>temp(6));
	in7: INVERTER port map (a=>X(7) , b=>temp(7));
	
	full1: EightBitAdder port map (A=>temp,B=>mask, Sum=>Y);
end invert;
