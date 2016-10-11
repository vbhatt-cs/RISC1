library ieee;
use ieee.std_logic_1164.all;

package datapathComponents is
    --Register file. 
    --If address of registers (a1, a2) are given,
    --d1, d2 will have the data in those registers.
    --Given a3,d3 and regWr high, d3 is written into register with address a3.
    component regFile is
        port(
            a1, a2, a3 : in std_logic_vector(2 downto 0);
            d3, pci : in std_logic_vector(15 downto 0);
            d1, d2, pco : out std_logic_vector(15 downto 0);
            regWr, pcWr : in std_logic;
            clk,reset : in std_logic);
    end component;

    --ALU for add, nand
    --aluOP=0 means add, =1 means nand
    component alu is
        port(
            IP1, IP2 : in std_logic_vector(15 downto 0);
            OP : out std_logic_vector(15 downto 0);
            aluOP : in std_logic;
            clk, reset : in std_logic);
    end component;
    
    --Memory for instruction, data
    --A - address
    --Din - data to write
    --Dout - read data
    --To read - address in A, memR high. Dout will have data
    --To write - address in A, data in Din, memWR high
    component memory is
        port(
            A, Din : in std_logic_vector(15 downto 0);
            Dout : out std_logic_vector(15 downto 0);
            memR, memWR : in std_logic;
            clk, reset : in std_logic);
    end component;
    
    --Generic register
    component dataRegister is
        generic (data_width:integer);
        port(
            Din : in std_logic_vector(data_width-1 downto 0);
            Dout : out std_logic_vector(data_width-1 downto 0);
            clk, enable : in std_logic);
    end component;
    
end package;
