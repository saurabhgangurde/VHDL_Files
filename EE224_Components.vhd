library std;
use std.standard.all;

library ieee;
use ieee.std_logic_1164.all;

package EE224_Components is
   component INVERTER is
	port (a: in std_logic; b : out std_logic);
   end component;
   component ANDGate is
	port (a, b: in std_logic; c : out std_logic);
   end component;
   component ORGate is
	port (a, b: in std_logic; c : out std_logic);
   end component;
component HalfAdder is
   port(x,y: in std_logic;
        s,c0: out std_logic);
   end component;
component FullAdder is
   port(a,b,c1: in std_logic;
        w,z: out std_logic);
end component;
component EightBitAdder is
   port(   
  A, B: in std_logic_vector(7 downto 0);
  Sum: out std_logic_vector(7 downto 0));
end component;
component TwosComplement is
   port( X: in std_logic_vector(7 downto 0);
  Y: out std_logic_vector(7 downto 0));
end component;
component EightBitSubtractor  is
   port(   
  P,Q: in std_logic_vector(7 downto 0);
  Diff: out std_logic_vector(7 downto 0));
end component;
component UnitLeftShift  is
   port(   
  X: in std_logic_vector(7 downto 0);
  Y: out std_logic_vector(7 downto 0));
end component;
component UnitRightShift  is
   port(   
  X: in std_logic_vector(7 downto 0);
  Y: out std_logic_vector(7 downto 0));
end component;
component Multiplexor is
   port(a,b,n: in std_logic;
        output: out std_logic);
end component;
component RShift is
   port(   
  X, Y: in std_logic_vector(7 downto 0);
  Z: out std_logic_vector(7 downto 0));
end component;
component leftShift is
   port(   
  X, Y: in std_logic_vector(7 downto 0);
  Z: out std_logic_vector(7 downto 0));
end component;
component ALU is
  port (
   M,N: in std_logic_vector(7 downto 0);
   op:in std_logic_vector(1 downto 0);
  R: out std_logic_vector(7 downto 0));
end component;
component ByteMultiplexor is
   port(a,b: in std_logic_vector;
	n:in std_logic;
        output: out std_logic_vector);
end component;
end EE224_Components;

