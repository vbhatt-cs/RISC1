library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.datapathComponents.all;

entity memory is
    port( 
        A,Din : in std_logic_vector(15 downto 0);
        Dout : out std_logic_vector(15 downto 0);
        memWR : in std_logic;
        clk : in std_logic);
end entity;

architecture Behave of memory is
    type ram_t is array (0 to 65535) of std_logic_vector(15 downto 0);
    signal ram : ram_t := (others => (others => '0'));
begin
    Dout <= ram(to_integer(unsigned(A)));
    process(clk)
    begin
        if(rising_edge(Clk)) then
            if(memWR='1') then
                ram(to_integer(unsigned(A))) <= Din;
            end if;
        end if; 
    end process;
end Behave;
