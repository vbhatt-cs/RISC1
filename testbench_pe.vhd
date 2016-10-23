library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Testbench_pe is
end entity;

architecture Behave of Testbench_pe is
	component PE is
        port(
            inp: in std_logic_vector(15 downto 0);
            v: out std_logic;
            a: out std_logic_vector(2 downto 0);
            d: out std_logic_vector(15 downto 0));
    end component;

	signal inp,d: std_logic_vector(15 downto 0);
	signal v: std_logic;
	signal a: std_logic_vector(2 downto 0);
begin
    dut: PE port map(inp=>inp, v=>v, a=>a, d=>d);

	process
	begin 
		--1
		inp <= "0000100000000000";
		wait for 25 ns;
		assert(v = '1') report "Error in v"; 
		assert(a = "100") report "Error in a";
		assert(d = "0000000000000000") report "Error in d";
		wait for 25 ns;
		
		--2
		inp <= "0100001000000000";
		wait for 25 ns;
		assert(v = '1') report "Error in v"; 
		assert(a = "010") report "Error in a";
		assert(d = "0100000000000000") report "Error in d";
		wait for 25 ns;
		
		--3
		inp <= "0000000000000000";
		wait for 25 ns;
		assert(v = '0') report "Error in v";  
	wait;
	end process;
end Behave;
