
library ieee;
use ieee.std_logic_1164.all;

library std;
use std.standard.all;

library work;
use work.EE224_components.all;


entity EightBitAdder is
   port(   
  A, B: in std_logic_vector(7 downto 0);
  Sum: out std_logic_vector(7 downto 0));
end entity;
architecture BigAdder of EightBitAdder is
   signal Cout:std_logic_vector(7 downto 0);
begin
        full0: FullAdder port map (a=>A(0) , b=>B(0), c1=>'0', w=>Sum(0),z=>Cout(0));
	full1: FullAdder port map (a=>A(1) , b=>B(1), c1=>Cout(0), w=>Sum(1),z=>Cout(1));
	full2: FullAdder port map (a=>A(2) , b=>B(2), c1=>Cout(1), w=>Sum(2),z=>Cout(2));
	full3: FullAdder port map (a=>A(3) , b=>B(3), c1=>Cout(2), w=>Sum(3),z=>Cout(3));
	full4: FullAdder port map (a=>A(4) , b=>B(4), c1=>Cout(3), w=>Sum(4),z=>Cout(4));
	full5: FullAdder port map (a=>A(5) , b=>B(5), c1=>Cout(4), w=>Sum(5),z=>Cout(5));
	full6: FullAdder port map (a=>A(6) , b=>B(6), c1=>Cout(5), w=>Sum(6),z=>Cout(6));
	full7: FullAdder port map (a=>A(7) , b=>B(7), c1=>Cout(6), w=>Sum(7),z=>Cout(7));


end BigAdder;
