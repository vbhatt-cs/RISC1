library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Testbench_alu is
end entity;

architecture Behave of Testbench_alu is
	component alu is
		port(
        	IP1, IP2 : in std_logic_vector(15 downto 0);
		    OP : out std_logic_vector(15 downto 0);
		    aluOP : in std_logic;
			C: out std_logic
		    );
	end component alu;

	signal IP1,IP2,OP: std_logic_vector(15 downto 0);
	signal aluOP, C: std_logic;
	

begin
  dut: alu port map(IP1=>IP1, IP2=>IP2, OP=>OP, aluOP=>aluOP, C=>C);

	process
		variable op_flag : boolean := false;
		variable c_flag : boolean := false;
		
	begin 
		
		--1
		op_flag := false;
		c_flag := false;
		IP1 <= "1001100110011001";
		IP2 <= "1000000000000001";
		aluOP <= '0';
		wait for 25 ns;
		if (OP /= "0001100110011010") then
			op_flag := true;
		end if; 
		if (C /= '1') then
			c_flag := true;
		end if;
		wait for 25 ns;
		assert (op_flag) report "Output 1 correct" severity note;
		assert (not op_flag) report "Output 1 wrong" severity error;
		assert (c_flag) report "Carry 1 correct" severity note;
		assert (not c_flag) report "Carry 1 wrong" severity error;
		
		--2
		op_flag := false;
		c_flag := false;
		aluOP <= '1';
		IP1 <= "0001100110011001";
		IP2 <= "1000000000000001";
		wait for 25 ns;
		if (OP /= "1111111111111110") then
			op_flag := true;
		end if; 
		if (C /= '0') then
			c_flag := true;
		end if;
		wait for 25 ns;
		assert (op_flag) report "Output 2 correct" severity note;
		assert (not op_flag) report "Output 2 wrong" severity error;
		assert (c_flag) report "Carry 2 correct" severity note;
		assert (not c_flag) report "Carry 2 wrong" severity error;
		
		--3
		op_flag := false;
		c_flag := false;
		IP1 <= "0001100110011111";
		IP2 <= "1001000000000010";
		aluOP <= '1';
		wait for 25 ns;
		if (OP /= "1110111111111101") then			
			op_flag := true;
		end if; 
		if (C /= '0') then
			c_flag := true;
		end if;
		wait for 25 ns;
		assert (op_flag) report "Output 3 correct" severity note;
		assert (not op_flag) report "Output 3 wrong" severity error;
		assert (c_flag) report "Carry 3 correct" severity note;
		assert (not c_flag) report "Carry 3 wrong" severity error;
		
		--4
		op_flag := false;
		c_flag := false;
		IP1 <= "0001100110011111";
		IP2 <= "1001000000000010";
		aluOP <= '0';
		wait for 25 ns;
		if (OP /= "1010100110100001") then
			op_flag := true;
		end if; 
		if (C /= '0') then
			c_flag := true;
		end if;
		wait for 25 ns;
		assert (op_flag) report "Output 4 correct" severity note;
		assert (not op_flag) report "Output 4 wrong" severity error;
		assert (c_flag) report "Carry 4 correct" severity note;
		assert (not c_flag) report "Carry 4 wrong" severity error;

	
	wait;
	end process;
	
end Behave;
