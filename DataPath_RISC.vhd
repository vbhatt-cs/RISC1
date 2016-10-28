library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;
use work.datapathComponents.all;

entity Datapath_RISC is
	port (
        M2,M3,M6,M7,M8,M9,M14: in std_logic;
        PCWr,PCTempWr,IREn,MemWr,T1En,T2En,T3En,T4En,RegWr,CEn,ZEn,Alu_OP: in std_logic;
        M1,M4,M5,M10,M11,M12,M13: in std_logic_vector(1 downto 0);
        C,Z,PE_V,compVal: out std_logic;
        IRVal: out std_logic_vector(15 downto 0);
        clk,reset: in std_logic );
end entity;

architecture Build of DataPath_RISC is
    signal RF_pci,RF_pco,PC_in,PC_out,Mem_A,Mem_din,Mem_dout,RF_D1,RF_D2,RF_D3,
            PE_in,PE_D,Comp_D1,Comp_D2,IR_in,IR_out,
            T1_in,T1_out,T2_in,T2_out,T4_in,T4_out,T3_in,T3_out,
            Alu_1,Alu_2,Alu_out,SE_out,USE_out: std_logic_vector(15 downto 0);
    signal PE_A,RF_A1,RF_A2,RF_A3: std_logic_vector(2 downto 0);
    signal PE_valid,Comp_out,Alu_C: std_logic;
    constant one: std_logic_vector(15 downto 0) := "0000000000000001";
    constant zero: std_logic_vector(15 downto 0) := "0000000000000000";
begin
    --Priority Encoder
    PE_in <= T4_out;
    PE_V <= PE_valid;
    pr_enc: PE
    		port map(inp=>PE_in,v=>PE_valid,a=>PE_A,d=>PE_D);	
    		
    --Memory
    Mem_A <= T2_out when (M1="10") else
    		T3_out when (M1="11") else
            RF_pco;
    Mem_din <=	T3_out when (M2='0') else T2_out;
    mem: memory
    		port map(A=>Mem_A, Din=>Mem_din, Dout=>Mem_dout, memWR=>MemWr, clk=>clk);
    
    --Register File
    RF_pci <= PC_out;
    RF_A1 <= IR_out(8 downto 6) when (M3='0') else PE_A;
    RF_A2 <= IR_out(11 downto 9);
    RF_A3 <= IR_out(11 downto 9) when (M4="00") else 
    		IR_out(5 downto 3) when (M4="01") else
    		PE_A when (M4="10") else
    		IR_out(8 downto 6);
    RF_D3 <=PC_out when (M5="00") else 
    		T3_out when (M5="01") else
    		T4_out;
    rf: regFile 
        port map(a1 => RF_A1, a2 => RF_A2, a3 => RF_A3,
                d3 => RF_D3, pci => RF_pci,
                d1 => RF_D1, d2 => RF_D2, pco => RF_pco,
                regWr => RegWr, pcWr => PCWr, clk => clk, reset => reset);
    
    --Sign Extenders	
    SE_out <= std_logic_vector(resize(signed(IR_out(5 downto 0)),16)) when (M6='0') else
    			std_logic_vector(resize(signed(IR_out(8 downto 0)),16)); 	
    USE_out <= IR_out(8 downto 0)&"0000000";
    
    --Comparator
	Comp_D1 <= T3_out when (M7='0') else T1_out;
	Comp_D2 <= zero when (M8='0') else T2_out;
	comp: Comparator
        port map (Comp_D1 => Comp_D1, Comp_D2 => Comp_D2, Comp_out => Comp_out);
    zReg: flipFlop
        port map (Din => Comp_out, Dout => Z, enable => ZEn,clk => clk);
    
    compVal <= Comp_out;
    
    
    --Temporary Registers
    T1_in <= RF_D1;
    T2_in <= RF_D2 when (M9='0') else Alu_out;
    T4_in <=USE_out when (M10="00") else 
    		SE_out when (M10="01") else
    		PE_D;
    T3_in <=Mem_dout when (M11="00") else 
    		RF_pco when (M11="01") else
    		ALU_out when (M11="10") else
    		RF_D1;
    t1: dataRegister generic map (data_width => 16)
        port map (Din => T1_in, Dout => T1_out, enable => T1En,clk => clk);
        
    t2: dataRegister generic map (data_width => 16)
        port map (Din => T2_in, Dout => T2_out, enable => T2En,clk => clk);
        
    t3: dataRegister generic map (data_width => 16)
        port map (Din => T3_in, Dout => T3_out, enable => T3En,clk => clk);
        
    t4: dataRegister generic map (data_width => 16)
        port map (Din => T4_in, Dout => T4_out, enable => T4En,clk => clk);	
    
    --ALU
    Alu_1 <=RF_pco when (M12="00") else 
    		T1_out when (M12="01") else
    		T2_out when (M12="10") else
    		SE_out; 
    Alu_2 <= one   when (M13="00") else 
			T2_out when (M13="01") else
    		T4_out when (M13="10") else
    		T3_out;
    aluInst: alu
    	 port map (IP1=>Alu_1,IP2=>Alu_2,OP=>Alu_out,aluOP=>Alu_OP,C=>Alu_C);
   	cReg: flipFlop
        port map (Din => Alu_C, Dout => C, enable => CEn,clk => clk);
    
    --Instruction Register
    IR_in <= Mem_dout;
    ir: dataRegister generic map (data_width => 16)
        port map (Din => IR_in, Dout => IR_out, enable => IREn,clk => clk);
    IRVal<= IR_out;
    
    --Program Counter
    PC_in <= Alu_out when (M14='0') else RF_D1;
    pc: dataRegister generic map (data_width => 16)
        port map (Din => PC_in, Dout => PC_out, enable => PCTempWr, clk => clk);
end Build;

