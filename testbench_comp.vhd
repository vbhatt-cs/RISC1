library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Testbench_comp is
end entity;

architecture Behave of Testbench_comp is
	component Comparator is
        port(
		    Comp_D1,Comp_D2: in std_logic_vector(15 downto 0);
			Comp_out: out std_logic);
    end component; 

	signal IP1,IP2: std_logic_vector(15 downto 0);
	signal OP: std_logic;
begin
  dut: Comparator port map(Comp_D1=>IP1, Comp_D2=>IP2, Comp_out=>OP);

	process
	begin 
		--1
		IP1 <= "1001100110011001";
		IP2 <= "1000000000000001";
		wait for 25 ns;
		if (OP /= '0') then
			report "Error in not equal"; 
		end if; 
		wait for 25 ns;
		
		--2
		IP1 <= "0001100110011001";
		IP2 <= "0001100110011001";
		wait for 25 ns;
		if (OP /= '1') then
			report "Error in equal";
		end if; 
	wait;
	end process;
	
end Behave;
