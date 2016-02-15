library ieee;
use ieee.std_logic_1164.all;

library std;
use std.standard.all;

library work;
use work.EE224_components.all;

entity EightBitSubtractor  is
   port(   
  P,Q: in std_logic_vector(7 downto 0);
  Diff: out std_logic_vector(7 downto 0));
end entity;
architecture subtract of EightBitSubtractor is
   signal temp :std_logic_vector(7 downto 0);
begin
	complement0:TwosComplement port map(X=>Q, Y=>temp);
        add1: EightBitAdder port map(A=>P,B=>temp,Sum=>Diff);	

 
end subtract;
