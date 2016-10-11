library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.datapathComponents.all;

entity alu is
    port(
        IP1, IP2 : in std_logic_vector(15 downto 0);
        OP : out std_logic_vector(15 downto 0);
        aluOP : in std_logic;
        clk, reset : in std_logic);
end entity;

architecture Behave of alu is
begin
    OP <= 
        std_logic_vector(signed(IP1)+signed(IP2)) when (aluOP='0') 
        else (IP1 nand IP2);
end Behave;