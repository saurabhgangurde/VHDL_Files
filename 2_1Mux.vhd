
library ieee;
use ieee.std_logic_1164.all;

library std;
use std.standard.all;

library work;
use work.EE224_components.all;


entity Multiplexor is
   port(a,b,n: in std_logic;
        output: out std_logic);
end entity;
architecture Mux of Multiplexor is
begin
	output<= (n and b) or (not n and a); 
end Mux;
