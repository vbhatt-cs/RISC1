library ieee;
use ieee.std_logic_1164.all;
package mem_package is
type ram_t is array (0 to 32767) of std_logic_vector(15 downto 0);
constant MEM_INIT : ram_t := (
0 => "0011000000001010",
1 => "0011001000010100",
2 => "0000001000010000",
3 => "0010001111011000",
4 => "0011100000000001",
5 => "0101010100000000",
6 => "0101011100000001",
7 => "0110100000000011",
8 => "0000100111100000",
9 => "0111100000011111",
others => (others => '0'));
end package mem_package;
