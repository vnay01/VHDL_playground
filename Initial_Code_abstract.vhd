--Abstract architecture of even parity detector
-- library inclusion
library ieee;
use ieee.std_logic_1164.all;

-- Entity declarations
entity even_parity_abstraction is
	port (
		a_in: in std_logic_vector ( 2 downto 0);
		even:out std_logic
		);
	end even_parity_abstraction;

-- Abstract architectural description of even_parity_abstract
	architecture abs_even_parity_abstract of even_parity_abstraction is
		-- declare any signals within the design
		signal odd:std_logic;
		begin
			--invertor
			even<=not odd;
			
			-- XOR network for odd parity using process construct
			process (a_in)
				variable tmp:std_logic;
				begin
				tmp := '0';
				for i in 2 downto 0 loop
					tmp := tmp xor a_in(i);
					end loop;
				odd<=tmp;
			end process;
	-- close architecture
	end abs_even_parity_abstract;