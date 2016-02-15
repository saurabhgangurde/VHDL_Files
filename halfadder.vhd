library ieee;
use ieee.std_logic_1164.all;
library work;
use work.EE224_Components.all;
entity HalfAdder is
   port(x,y: in std_logic;
        s,c0: out std_logic);
end entity;
architecture Struct of HalfAdder is
   signal z, g1, g2, g3, g4: std_logic;
begin

   i1: INVERTER port map (a => x, b => g1);
   i2: INVERTER port map (a => y, b => g2);
   a1: ANDGate port map (a => y, b => g1, c => g3);
   a2: ANDGate port map (a => g2, b => x, c => g4);
   o1: ORGate port map (a => g3, b => g4, c=> s); 
   a5: ANDGate port map (a => y, b => x, c => c0);

 
end Struct;
