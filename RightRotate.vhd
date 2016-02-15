library ieee;
use ieee.std_logic_1164.all;

library std;
use std.standard.all;

library work;
use work.EE224_components.all;


entity rightShift is
   port(   
  X, Y: in std_logic_vector(7 downto 0);
  Z: out std_logic_vector(7 downto 0));
end entity;
architecture right of rightShift is
signal temp,temp1:std_logic_vector(7 downto 0);
begin
	mux00: Multiplexor port map( n=>Y(2), a=>X(0), b=>X(4), output=>temp(0)); 
	mux01: Multiplexor port map( n=>Y(2), a=>X(1), b=>X(5),output=>temp(1));
	mux02: Multiplexor port map( n=>Y(2), a=>X(2), b=>X(6),output=>temp(2));
	mux03: Multiplexor port map( n=>Y(2), a=>X(3), b=>X(7),output=>temp(3));
	mux04: Multiplexor port map( n=>Y(2), a=>X(4), b=>X(0),output=>temp(4));
	mux05: Multiplexor port map( n=>Y(2), a=>X(5), b=>X(1),output=>temp(5));
	mux06: Multiplexor port map( n=>Y(2), a=>X(6), b=>X(2),output=>temp(6));
	mux07: Multiplexor port map( n=>Y(2), a=>X(7), b=>X(3),output=>temp(7));

	mux10: Multiplexor port map( n=>Y(1), b=>temp(2), a=>temp(0),output=>temp1(0));
	mux11: Multiplexor port map( n=>Y(1), b=>temp(3), a=>temp(1),output=>temp1(1));
	mux12: Multiplexor port map( n=>Y(1), b=>temp(4), a=>temp(2),output=>temp1(2));
	mux13: Multiplexor port map( n=>Y(1), b=>temp(5), a=>temp(3),output=>temp1(3));
	mux14: Multiplexor port map( n=>Y(1), b=>temp(6), a=>temp(4),output=>temp1(4));
	mux15: Multiplexor port map( n=>Y(1), b=>temp(7), a=>temp(5),output=>temp1(5));
	mux16: Multiplexor port map( n=>Y(1), b=>temp(1), a=>temp(6),output=>temp1(6));
	mux17: Multiplexor port map( n=>Y(1), b=>temp(0), a=>temp(7),output=>temp1(7));

	mux20: Multiplexor port map( n=>Y(0), a=>temp1(0), b=>temp1(1),output=>Z(0));
	mux21: Multiplexor port map( n=>Y(0), a=>temp1(1), b=>temp1(2),output=>Z(1));
	mux22: Multiplexor port map( n=>Y(0), a=>temp1(2), b=>temp1(3),output=>Z(2));
	mux23: Multiplexor port map( n=>Y(0), a=>temp1(3), b=>temp1(4),output=>Z(3));
	mux24: Multiplexor port map( n=>Y(0), a=>temp1(4), b=>temp1(5),output=>Z(4));
	mux25: Multiplexor port map( n=>Y(0), a=>temp1(5), b=>temp1(6),output=>Z(5));
	mux26: Multiplexor port map( n=>Y(0), a=>temp1(6), b=>temp1(7),output=>Z(5));
	mux27: Multiplexor port map( n=>Y(0), a=>temp1(7), b=>temp1(0),output=>Z(0));
end right;
