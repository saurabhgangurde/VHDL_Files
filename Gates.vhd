library ieee;
use ieee.std_logic_1164.all;	
entity INVERTER is
  port (a: in std_ulogic;
         b: out std_ulogic);
end entity INVERTER;
architecture Behave of INVERTER is
begin
  b <= not a;
end Behave;

library ieee;
use ieee.std_logic_1164.all;
entity ANDGate is
  port (a, b: in std_ulogic;
         c: out std_ulogic);
end entity ANDGate;
architecture Behave of ANDGate is
begin
  c <= a and b;
end Behave;

library ieee;
use ieee.std_logic_1164.all;
entity ORGate is
  port (a, b: in std_ulogic;
         c: out std_ulogic);
end entity ORGate;
architecture Behave of ORGate is
begin
  c <= a or b;
end Behave;
