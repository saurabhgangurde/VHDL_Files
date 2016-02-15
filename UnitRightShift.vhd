library ieee;
use ieee.std_logic_1164.all;

library std;
use std.standard.all;

library work;
use work.EE224_components.all;

entity UnitRightShift  is
   port(   
  X: in std_logic_vector(7 downto 0);
  Y: out std_logic_vector(7 downto 0));
end entity;
architecture shift of UnitRightShift is
   signal temp :std_logic_vector(7 downto 0);
begin
	L1:for i in 7 to 1 generate
		Y(i-1)<=x(i);
	end generate L1; 
Y(7)<='0';
end shift;
