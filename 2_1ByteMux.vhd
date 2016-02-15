library ieee;
use ieee.std_logic_1164.all;

library std;
use std.standard.all;

library work;
use work.EE224_components.all;


entity ByteMultiplexor is
   port(a,b: in std_logic_vector;
	n:in std_logic;
        output: out std_logic_vector);
end entity;
architecture Mux of ByteMultiplexor is
begin
	output(0)<= (n and b(0)) or (not n and a(0));
	output(1)<= (n and b(1)) or (not n and a(1));
	output(2)<= (n and b(2)) or (not n and a(2));
	output(3)<= (n and b(3)) or (not n and a(3));
	output(4)<= (n and b(4)) or (not n and a(4)); 
	output(5)<= (n and b(5)) or (not n and a(5));
	output(6)<= (n and b(6)) or (not n and a(6));
	output(7)<= (n and b(7)) or (not n and a(7));
end Mux;
