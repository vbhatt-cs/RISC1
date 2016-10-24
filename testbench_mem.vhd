library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Testbench_memory is
end entity;

architecture Behave of Testbench_memory is
	component memory is
    		port(
        		A, Din : in std_logic_vector(15 downto 0);
        		Dout : out std_logic_vector(15 downto 0);
        		memWR : in std_logic;
        		clk : in std_logic);
	end component;
	
	signal A, Din : std_logic_vector(15 downto 0);
    signal Dout : std_logic_vector(15 downto 0);
    signal memWR : std_logic;
    signal clk : std_logic :='0';
    signal finished : std_logic := '0';

begin
  dut: memory port map(A =>A , Din => Din, Dout => Dout, memWR => memWR, clk => clk);

	clk <= not clk after 10 ns when (finished='0') else '0';
	process
	variable err_flag: boolean := false;
	begin
		
		A <= "0000000010100011";
		Din <= "0100010001110001";
		memWR <= '1';
		wait until clk='1';

		A <= "1000000010100011";
		Din <= "1100010001110001";
		memWR <= '1';
		wait until clk='1';
		
		A <= "0000000000000000";
		Din <= "1100010001110001";
		memWR <= '0';
		wait until clk='1';
		wait until clk='0';
		
		if (Dout /= "0011000000001010") then
			report integer'image(to_integer(unsigned(Dout))) severity note;
			err_flag := true;
		end if;
		
		A <= "1000000010100011";
		Din <= "1101010001110001";
		memWR <= '0';
		wait until clk='1';
		wait until clk='0';
		
		if (Dout /= "1100010001110001") then
			report integer'image(to_integer(unsigned(Dout))) severity note;
			err_flag := true;
		end if;	
		
		
		assert (err_flag) report "SUCCESS, all tests passed." severity note;
   		assert (not err_flag) report "FAILURE, some tests failed." severity error;
   		
   		finished <= '1';
		wait;
	end process;
end Behave;

