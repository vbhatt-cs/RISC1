library ieee;
use ieee.std_logic_1164.all;
library work;
use work.datapathComponents.all;

entity RISC1 is
    port(a: in std_logic;
        b: out std_logic);
end entity;

architecture Struct of RISC1 is
begin
    b <= a;
end Struct;