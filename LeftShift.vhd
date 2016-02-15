library ieee;
use ieee.std_logic_1164.all;

library std;
use std.standard.all;

library work;
use work.EE224_components.all;

entity leftShift is
   port(   
  X, Y: in std_logic_vector(7 downto 0);
  Z: out std_logic_vector(7 downto 0));
end entity;
architecture left of leftShift is
signal temp,temp1,temp2:std_logic_vector(7 downto 0);signal controlBit:std_logic;
begin
	mux00: Multiplexor port map( n=>Y(2), a=>X(7), b=>X(3), output=>temp(0)); 
	mux01: Multiplexor port map( n=>Y(2), a=>X(6), b=>X(2),output=>temp(1));
	mux02: Multiplexor port map( n=>Y(2), a=>X(5), b=>X(1),output=>temp(2));
	mux03: Multiplexor port map( n=>Y(2), a=>X(4), b=>X(0),output=>temp(3));
	mux04: Multiplexor port map( n=>Y(2), a=>X(3), b=>'0',output=>temp(4));
	mux05: Multiplexor port map( n=>Y(2), a=>X(2), b=>'0',output=>temp(5));
	mux06: Multiplexor port map( n=>Y(2), a=>X(1), b=>'0',output=>temp(6));
	mux07: Multiplexor port map( n=>Y(2), a=>X(0), b=>'0',output=>temp(7));

	mux10: Multiplexor port map( n=>Y(1), b=>temp(2), a=>temp(0),output=>temp1(0));
	mux11: Multiplexor port map( n=>Y(1), b=>temp(3), a=>temp(1),output=>temp1(1));
	mux12: Multiplexor port map( n=>Y(1), b=>temp(4), a=>temp(2),output=>temp1(2));
	mux13: Multiplexor port map( n=>Y(1), b=>temp(5), a=>temp(3),output=>temp1(3));
	mux14: Multiplexor port map( n=>Y(1), b=>temp(6), a=>temp(4),output=>temp1(4));
	mux15: Multiplexor port map( n=>Y(1), b=>temp(7), a=>temp(5),output=>temp1(5));
	mux16: Multiplexor port map( n=>Y(1), b=>'0', a=>temp(6),output=>temp1(6));
	mux17: Multiplexor port map( n=>Y(1), b=>'0', a=>temp(7),output=>temp1(7));

	mux20: Multiplexor port map( n=>Y(0), a=>temp1(0), b=>temp1(1),output=>temp2(7));
	mux21: Multiplexor port map( n=>Y(0), a=>temp1(1), b=>temp1(2),output=>temp2(6));
	mux22: Multiplexor port map( n=>Y(0), a=>temp1(2), b=>temp1(3),output=>temp2(5));
	mux23: Multiplexor port map( n=>Y(0), a=>temp1(3), b=>temp1(4),output=>temp2(4));
	mux24: Multiplexor port map( n=>Y(0), a=>temp1(4), b=>temp1(5),output=>temp2(3));
	mux25: Multiplexor port map( n=>Y(0), a=>temp1(5), b=>temp1(6),output=>temp2(2));
	mux26: Multiplexor port map( n=>Y(0), a=>temp1(6), b=>temp1(7),output=>temp2(1));
	mux27: Multiplexor port map( n=>Y(0), a=>temp1(7), b=>'0',output=>temp2(0));

	controlBit<=Y(3) or Y(4) or Y(5) or Y(6) or Y(7);
	mux30: Multiplexor port map( n=>controlBit, a=>temp2(0), b=>'0',output=>Z(0));
	mux31: Multiplexor port map( n=>controlBit, a=>temp2(1), b=>'0',output=>Z(1));
	mux32: Multiplexor port map( n=>controlBit, a=>temp2(2), b=>'0',output=>Z(2));
	mux33: Multiplexor port map( n=>controlBit, a=>temp2(3), b=>'0',output=>Z(3));
	mux34: Multiplexor port map( n=>controlBit, a=>temp2(4), b=>'0',output=>Z(4));
	mux35: Multiplexor port map( n=>controlBit, a=>temp2(5), b=>'0',output=>Z(5));
	mux36: Multiplexor port map( n=>controlBit, a=>temp2(6), b=>'0',output=>Z(6));
	mux37: Multiplexor port map( n=>controlBit, a=>temp2(7), b=>'0',output=>Z(7));
end left;
