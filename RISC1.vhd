library ieee;
use ieee.std_logic_1164.all;
library work;
use work.finalComponents.all;

entity RISC1 is
    port(clk,reset: in std_logic);
end entity;

architecture Struct of RISC1 is
    signal M2,M3,M6,M7,M8,M9,M14: std_logic;
    signal PCWr,PCTempWr,IREn,MemWr,T1En,T2En,T3En,T4En,RegWr,CEn,ZEn,Alu_op: std_logic;
    signal M1,M4,M5,M10,M11,M12,M13: std_logic_vector(1 downto 0);
    signal C,Z,PE_V,comp: std_logic;
    signal IRVal: std_logic_vector(15 downto 0);
begin
    dp: Datapath_RISC port map
        (M2=>M2,M3=>M3,M6=>M6,M7=>M7,M8=>M8,M9=>M9,M14=>M14,
        PCWr=>PCWr,PCTempWr=>PCTempWr,IREn=>IREn,MemWr=>MemWr,
        T1En=>T1En,T2En=>T2En,T3En=>T3En,T4En=>T4En,RegWr=>RegWr,CEn=>CEn,ZEn=>ZEn,Alu_op=>Alu_op,
        M1=>M1,M4=>M4,M5=>M5,M10=>M10,M11=>M11,M12=>M12,M13=>M13,
        C=>C,Z=>Z,PE_V=>PE_V,compVal=>comp,
        IRVal=>IRVal,clk=>clk,reset=>reset);
        
    cp: controlpath port map
        (M2=>M2,M3=>M3,M6=>M6,M7=>M7,M8=>M8,M9=>M9,M14=>M14,
        PCWr=>PCWr,PCTempWr=>PCTempWr,IREn=>IREn,MemWr=>MemWr,
        T1En=>T1En,T2En=>T2En,T3En=>T3En,T4En=>T4En,RegWr=>RegWr,CEn=>CEn,ZEn=>ZEn,Alu_op=>Alu_op,
        M1=>M1,M4=>M4,M5=>M5,M10=>M10,M11=>M11,M12=>M12,M13=>M13,
        C=>C,Z=>Z,PE_V=>PE_V,comp_out=>comp,
        IRVal=>IRVal,clk=>clk,reset=>reset);
end Struct;