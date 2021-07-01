-- Code for circuit of exercise 2.6, pg 68(pdf)

library ieee;
use ieee.std_logic_1164.all;

--entity declarations
entity even_detector is
	port ( a: in std_logic_vector 3 downto 0;
		  odd : out std_logic 
		  );
	end even_detector;
	
-- architecture
	architecture str_arch of even_detector is
		--declarations of components
			component xor2
				port(	i1,i2:in std_logic;
						o1:std_logic
						);
			end component;
		--declarations of connecting signals
		signal sig1,sig2 : std_logic;
		
		--instantiations of components and interconnecting signals
	begin
	unit10: xor2
		port map( i1=>a[0],i2=>a[1],o1=>sig1);
	
	unit11: xor2
		port map(i1=> a[2],i2=>a[3],o1=>sig2);
	
	unit2: xor2
		port map(i1=>sig1,i2=>sig2,o1=>odd);
	end str_arch;
