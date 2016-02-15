
library ieee;
use ieee.std_logic_1164.all;

library std;
use std.standard.all;

library work;
use work.EE224_components.all;


entity FullAdder is
   port(a,b,c1: in std_logic;
        w,z: out std_logic);
end entity;
architecture Add of FullAdder is
   signal g1, g2, g3: std_logic;
   
begin


   ha1: HalfAdder port map (x => a, y => b, s => g1, c0=> g2);
   ha2: HalfAdder port map (x => g1, y => c1, s => w, c0 => g3);
   or00: ORGate port map (a => g3, b => g2, c=> z);
 
end Add;
