library ieee;
use ieee.std_logic_1164.all;

library std;
use std.standard.all;

library work;
use work.EE224_components.all;

entity UnitLeftShift  is
   port(   
  X: in std_logic_vector(7 downto 0);
  Y: out std_logic_vector(7 downto 0));
end entity;
architecture shift of UnitLeftShift is
   signal temp :std_logic_vector(7 downto 0);
begin
	L1:for i in 7 to 1 generate
		Y(i)<=x(i-1);
	end generate L1; 
Y(0)<='0';
end shift;
