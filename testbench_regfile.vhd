library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Testbench_RF is
end entity;

architecture Behave of Testbench_RF is

    signal a1,a2,a3 : std_logic_vector(2 downto 0);
	signal d3,pci,d1,d2,pco : std_logic_vector (15 downto 0);
    signal regWr, pcWr :std_logic := '0';
	signal clk : std_logic := '0';
	signal reset : std_logic := '1';
    signal finished : std_logic := '0';
    
	component regFile is
		port(
        a1, a2, a3 : in std_logic_vector(2 downto 0);
        d3, pci : in std_logic_vector(15 downto 0);
        d1, d2, pco : out std_logic_vector(15 downto 0);
        regWr, pcWr : in std_logic;
        clk,reset : in std_logic);
	end component;

	begin
    clk <= not clk after 10 ns when (finished='0') else '0'; -- assume 20ns clock.

    -- reset process
    process
    begin
        wait until clk = '1';
        reset <= '0';
        wait;
    end process;

    process 
        variable err_flag : boolean := false;
    begin
        wait until clk = '1';
        
        a1 <= (others => '0');
        a2 <= (others => '0');
        pci <= (others => '0');
        pcWr <= '0';
        d3 <= "1011001110110011";
        a3 <= "000";
        regWr <= '1';
        
        wait until clk='1';
        
        a1 <= (others => '0');
        a2 <= (others => '0');
        pci <= "0101010101010101";
        pcWr <= '1';
        d3 <= "1011011110110111";
        a3 <= "001";
        regWr <= '1';
        
        wait until clk='1';
        
        a1 <= "000";
        a2 <= "001";
        pci <= (others => '0');
        pcWr <= '0';
        d3 <= (others => '0');
        a3 <= (others => '0');
        regWr <= '0';
        
        wait until clk='1';
        
        assert(d1="1011001110110011") report "Error in D1" severity error;
        assert(d2="1011011110110111") report "Error in D2"severity error;
        assert(pco="0101010101010101") report "Error in PCO" severity error;
        
        finished <= '1';
        wait;
    end process;
    
    dut: regFile port map(a1 => a1 , a2 => a2, a3 => a3,
                        d1 => d1, d2 => d2, d3 => d3,
                        pci => pci, pco => pco,
                        regWr => regWr, pcWr => pcWr,
                        clk => clk, reset => reset);
                        
end Behave;
