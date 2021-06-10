-- Design an even parity detector with 3 inputs and 1 outputs using XOR and Inverter gates
-- Use concepts of Structural description in VHDL - 'Component'

-- Beginning of design

-- Library inclusion statements start below:

library ieee;
use ieee.std_logic_1164.all;

--entity declarations - in this case an even parity detector
	entity even_detector is
		port(
			a: in std_logic_vector(2 downto 0);
			even: out std_logic
			);
		end even_detector;

--Architecture description using Structural description - refer attached pdf for details of design
architecture stru_even_arch of even_detector is
	--In structural description, we make use of the concept of 'components' which are just empty sockets with input and outputs
	-- these components have to be 'declared' first in the architecture of the design and then 'instantiated' to implement the complete 
		-- design
	 -- Declarations of components start here : XOR2 and NOT1
	 
	component xor2
		port(
			i1,i2:in std_logic;
			o1:out std_logic
			);
			end component;
	component not1
		port(
			i1 : in std_logic;
			o1: out std_logic
			);
			end component;
	
	-- Declaration of signals (viewed as connecting wires between modules)
	
	signal sig1,sig2:std_logic;
	
	--actual architectural design of the even detector starts here
		begin
			-- instantiate a xor2 unit for first stage of inputs
			unit1:xor2
				port map(i1=> a(0), i2=> a(1),o1=>sig1);
			-- instantiate another xor2 unit for second stage of inputs
			unit2: xor2
			port map(i1=>sig1,i2=>a(2),o1=>sig2);
			-- instantiate a not1 unit for output stage
			unit3:not1
			port map(i1=>sig2,o1=>even);
		end stru_even_arch;
	 