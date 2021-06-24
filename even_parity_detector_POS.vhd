-- Solution to problem# 2.4 from Book
library ieee;
use ieee.std_logic_1164.all;
	
-- entity declarations
	entity even_par_detector is
		port (
				a: in std_logic_vector (2 downto 0);
				F: out std_logic
				);
			end even_par_detector;

-- architecture of even_parity detector using POS representation
	architecture pos_arch of even_par_detector is
		
		-- Using components - the structral description of these components are compiled and stored in 'usrlib.vhd' file.
			component or3
				port( i1: in std_logic_vector (2 downto  0);
					out1 : out std_logic);
					end component;
			component and2
				port ( i1: in std_logic_vector (1 downto 0);
						out1: out std_logic);
					end component;
-- declare the "signals" in the design

signal sig1: std_logic_vector (3 downto 0);
signal sig_and2: std_logic_vector (1 downto 0);

--using components and signals to generate the design

begin
	-- instantiate 'or3' components
	unit1: or3
	port map( i1(0) => not a(0), i1(1)=> not a(1), i1(2)=> not a(2), out1=> sig1(0));
	
	unit2: or3
	port map( i1(0) => not a(0), i1(1) => a(1) , i1(2) => a(2), out1 => sig1(1));
	
	unit3: or3
	port map (i1(0)=> a(0),i1(1)=> not a(1), i1(2)=>a(2), out1=> sig1(2));
	unit4: or3
	port map( i1(0)=> a(0) , i1(1) => a(1) , i1(2)=> not a(2), out1=> sig1(3));
	
	-- instantiate 'and2' components
	unit5:and2
	port map(i1(0)=>sig1(0),i1(1)=>sig1(1),out1=>sig_and2(0));
	
	unit6:and2
	port map(i1(0)=>sig1(2),i1(1)=>sig1(3),out1=>sig_and2(1));
	
	F<=sig_and2(0) and sig_and2(1) after 100 ns;
	
	end pos_arch;
