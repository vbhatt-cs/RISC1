library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.datapathComponents.all;

entity datapath is
	port (
        M2,M3,M6,M7,M8,M9,
        PCWr,MemWr,IREn,T1En,T2En,T3En,T4En,RegWr,CounterEn,CEn,Zen: in std_logic;
        M1,M4,M5,M10,M11,M12,M13: in std_logic_vector(1 downto 0);
        T47,C,Z: out std_logic;
        counterVal: out std_logic_vector(2 downto 0)
        clk: in std_logic );
end entity;

architecture Build of DataPath_RISC is
    signal PC_In,PC_Out,Mem_A,Mem_din,Mem_dout,RF_D1,RF_D2,RF_D3,
            Counter_in,Counter_out,Comp_D1,Comp_D2,Comp_out,IR_in,IR_out
            T1_in,T1_out,T2_in,T2_out,T4_in,T4_out,T3_in,T3_out,
            Alu_1,Alu_2,Alu_out: std_logic_vector(15 downto 0);
    signal RF_A1,RF_A2,RF_A3: std_logic_vector(2 downto 0);
begin
    rf: regFile 
        port map(a1 => RF_A1, a2 => RF_A2, a3 => RF_A3,
                d3 => RF_D3, pci => PC_In,
                d1 => RF_D1, d2 => RF_D2,
                regWr => RegWr, pcWr => PCWr, clk => clk);
                
    t1: dataRegister generic map (data_width => 16)
        port map (Din => T1_in, Dout => T1_out, enable => T1En,clk => clk);
        
    t2: dataRegister generic map (data_width => 16)
        port map (Din => T2_in, Dout => T2_out, enable => T2En,clk => clk);
        
    ir: dataRegister generic map (data_width => 16)
        port map (Din => IR_in, Dout => IR_out, enable => IREn,clk => clk);
        
    T1_in <= RF_D1;
    T2_in <= RF_D2 when (M9='0') else Alu_out;
    
    RF_A1 <= IR_out(8 downto 6) when (M3='0') else Counter_out;
    RF_A2 <= IR_out(11 downto 9);
    
    counterVal <= counter_out;
	
end Build;

