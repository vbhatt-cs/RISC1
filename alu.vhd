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
		C: out std_logic);
end entity;

architecture Behave of alu is
signal IP1_s : SIGNED(IP1'length+1 downto 0);
signal IP2_s : SIGNED(IP2'length+1 downto 0);
signal OP_s : SIGNED(IP1'length+1 downto 0);
constant zeros : std_logic_vector(15 downto 0) := (others => '0');
begin
	IP1_s <= resize(signed(IP1), IP1_s'length+1);
	IP2_s <= resize(signed(IP2), IP2_s'length+1);
	OP_s <= IP1_s + IP2_s;
	OP <= std_logic_vector(OP_s(15 downto 0)) when (aluOP='0') 
	        else (IP1 nand IP2);
	C<= OP_s(16) when (aluOP='0') else '0';
end Behave;
