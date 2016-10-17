library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.datapathComponents.all;

entity regFile is
    port(
        a1, a2, a3 : in std_logic_vector(2 downto 0);
        d3, pci : in std_logic_vector(15 downto 0);
        d1, d2, pco : out std_logic_vector(15 downto 0);
        regWr, pcWr : in std_logic;
        clk,reset : in std_logic);
end entity;

architecture Behave of regFile is
    type vec16 is array(natural range <>) of std_logic_vector(15 downto 0);
    signal regIn, regOut : vec16(0 to 7);
    signal pcIn : std_logic_vector(15 downto 0);
    signal regEn : std_logic_vector(0 to 7);
begin
    GEN_REG:
    for i in 0 to 6 generate
        REGX: 
            dataRegister generic map (data_width => 16)
            port map (Din => regIn(I), Dout => regOut(I), enable => regEn(I),clk => clk);
    end generate GEN_REG;
    
    pcIn <= pci when (pcWr='1') else regIn(7);
    PC: dataRegister generic map (data_width => 16)
        port map (Din => pcIn, Dout => regOut(7), enable => (regEn(7) or pcWr), clk => clk);
    
    d1 <= regOut(to_integer(unsigned(a1)));
    d2 <= regOut(to_integer(unsigned(a2)));
    
    pco <= regOut(7);
    
    regIn(to_integer(unsigned(a3))) <= d3;
    regEn <= (to_integer(unsigned(a3)) => '1', others => '0') when (regWr='1') 
            else (others => '0');
end Behave;

