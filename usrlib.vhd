-- User defined Component library
-- I'll keep on updating this file as I progress.

library ieee;
use ieee.std_logic_1164.all;
use std.textio.all; 

-- entity declarations
	entity xor2 is
		port(
			i1,i2: in std_logic;
			o1: out std_logic
			);
		end xor2;
		
	--architectural description for above entities
	architecture beh_xor2 of xor2 is
		begin	
		o1<=i1 xor i2;
		end beh_xor2;
	
	library ieee;
	use ieee.std_logic_1164.all;
	
	entity not1 is
		port(
			i1:in std_logic;
			o1: out std_logic
			);
		end not1;	
	architecture beh_not1 of not1 is
		begin
		o1<= not i1;
		end beh_not1;
		
library ieee;
use ieee.std_logic_1164.all;

entity or3 is
			port ( i1: in std_logic_vector (2 downto 0);
					out1: out std_logic);
			end or3;
		--architecture
	architecture or3_pos of or3 is
		begin
			out1<=i1(0) or i1(1) or i1(2);
			end or3;
			
library ieee;
use ieee.std_logic_1164.all;
entity and2 is
	port ( i1: in std_logic_vector (1 downto 0);
		out1 : out std_logic);
		end and2;
-- architecture
architecture and2_pos of and2 is
begin
	out1<= i1(0) and i1(1);
	end and2;
	