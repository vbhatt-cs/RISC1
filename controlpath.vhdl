library ieee;  
use ieee.std_logic_1164.all; 
 
entity controlpath is  
    port (z,c,pe_v,comp_out : in std_logic;
        clk,reset : in std_logic;
        IRVal : in std_logic_vector(15 downto 0);
        M1,M4,M5,M10,M11,M12,M13 : out std_logic_vector(1 downto 0);  
        M2,M3,M6,M7,M8,M9,M14: out std_logic;
        PCWr,PCTempWr,MemWr,IREn,T1En,T2En,T3En,T4En,RegWr,CEn,ZEn,Alu_op : out std_logic);  
end entity;
  
architecture behaviour of controlpath is 
    type state_type is (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15);  
    signal state: state_type;
  
begin  
    process (state,clk,reset)
        variable next_state: state_type;
        variable M1_var,M4_var,M5_var,M10_var,M11_var,M12_var,M13_var: std_logic_vector(1 downto 0);
        variable M2_var,M3_var,M6_var,M7_var,M8_var,M9_var,M14_var: std_logic;
        variable PCWr_var,PCTempWr_var,MemWr_var,IREn_var,T1En_var,T2En_var,T3En_var,T4En_var,RegWr_var,CEn_var,ZEn_var,Alu_op_var: std_logic;

    begin
        --Defaults
        M1_var := "00";
        M4_var := "00";
        M5_var := "00";
        M10_var := "00";
        M11_var := "00";
        M12_var := "00";
        M13_var := "00";
        M2_var := '0';
        M3_var := '0';
        M6_var := '0';
        M7_var := '0';
        M8_var := '0';
        M9_var := '0';
        M14_var := '0';
        PCWr_var := '0';
        PCTempWr_var := '0';
        MemWr_var := '0';
        IREn_var := '0';
        T1En_var := '0';
        T2En_var := '0';
        T3En_var := '0';
        T4En_var := '0';
        RegWr_var := '0';
        CEn_var := '0';
        ZEn_var := '0';
        Alu_op_var := '0';
        next_state := state; 
                
        case state is  
        when s0 =>
            next_state := s1;
        when s1 =>
            next_state := s2;
            M1_var := "01";
            M11_var := "01";
            M12_var := "00";
            M13_var := "00";
            M14_var := '0';
            PCTempWr_var := '1';
            IREn_var := '1';
            T3En_var := '1';
                  
        when s2 =>
            M3_var := '0';
            M6_var := '0';
            M7_var := '1';
            M8_var := '1';
            M9_var := '0';
            T1En_var := '1';
            T2En_var := '1';
            if (IRVal(15 downto 12) = "0011") then 
                next_state := s3;
                M10_var := "00";
                T4En_var := '1'; 
            elsif (IRVal(15 downto 12) = "0000") then
                if (IRVal(1 downto 0) = "00") then
                    next_state := s4;
                elsif (IRVal(1 downto 0) = "01") then
                    if (z='1') then
                        next_state := s4;
                    else
                        next_state := s15;
                    end if;
                elsif (IRVal(1 downto 0) = "10") then
                    if (c='1') then
                        next_state := s4;
                    else
                        next_state := s15;
                    end if;
                end if;
            elsif (IRVal(15 downto 12) = "0010") then
                if (IRVal(1 downto 0) = "00") then
                    next_state := s4;
                elsif (IRVal(1 downto 0) = "01") then
                    if (z='1') then
                        next_state := s4;
                    else
                        next_state := s15;
                    end if;
                elsif (IRVal(1 downto 0) = "10") then
                    if (c='1') then
                        next_state := s4;
                    else
                        next_state := s15;
                    end if;
                end if;
            elsif ((IRVal(15 downto 12) = "0001") or (IRVal(15 downto 12) = "0100") or (IRVal(15 downto 12) = "0101")) then
                next_state := s4;
                M10_var := "01";
                T4En_var := '1';
            elsif (IRVal(15 downto 12) = "0110") then 
                next_state := s15;
                M10_var := "00";
                T4En_var := '1';
            elsif (IRVal(15 downto 12) = "0111") then 
                next_state := s9;
                M10_var := "00";
                T4En_var := '1';
            elsif (IRVal(15 downto 12) = "1100") then next_state := s11;
            elsif (IRVal(15 downto 12) = "1000") then next_state := s13;
            elsif (IRVal(15 downto 12) = "1001") then next_state := s14;
            end if;
                 
        when s3 => 
            next_state := s0;
            M7_var := '0';
            M8_var := '0';
            PCWr_var := '1';
            RegWr_var := '1';
            if ((IRVal(15 downto 12) = "0000") or (IRVal(15 downto 12) = "0010")) then
                M4_var := "01";
                M5_var := "01";
                ZEn_var := '1';
            elsif (IRVal(15 downto 12) = "0011") then
                M4_var := "00";
                M5_var := "10";
            elsif (IRVal(15 downto 12) = "0001") then
                M4_var := "11";
                M5_var := "01";
                ZEn_var := '1';
            elsif (IRVal(15 downto 12) = "0100") then
                M4_var := "00";
                M5_var := "01";
                ZEn_var := '1';
            end if;
             
        when s4 =>
            M11_var := "10";
            M12_var := "01";
            T3En_var := '1';                      
            if (IRVal(15 downto 12) = "0000") then 
                next_state := s3;
                M13_var := "01";
                CEn_var := '1';
                Alu_op_var := '0';
            elsif (IRVal(15 downto 12) = "0001") then
                next_state := s3;
                M13_var := "10";
                M12_var := "10";
                CEn_var := '1';
                Alu_op_var := '0';
            elsif (IRVal(15 downto 12) = "0010") then
                next_state := s3;
                M13_var := "01";
                CEn_var := '1';
                Alu_op_var := '1';
            elsif (IRVal(15 downto 12) = "0100") then 
                next_state := s5;
                M1_var := "01";
                M13_var := "10";
                Alu_op_var := '0';
            elsif (IRVal(15 downto 12) = "0101") then 
                next_state := s6;
                M13_var := "10";
                Alu_op_var := '0';
            end if;

        when s5 => 
            next_state := s3;
            M1_var := "11";
            M11_var := "00";
            T3En_var := '1';

        when s6 => 
            next_state := s15;
            M1_var := "11";
            M2_var := '1';
            MemWr_var := '1';

        when s7 =>
            --M1_var := "10";
            M9_var := '1';
            M11_var := "00";
            M12_var := "10";
            M13_var := "00";
            
            T2En_var := '1';
            T3En_var := '1';
            if (pe_v = '1') then next_state := s8;
            else next_state := s1;
            end if;

        when s8 =>
            next_state := s7;
            M1_var := "10";
            M4_var := "10";
            M5_var := "01";
            M10_var := "10";
            T4En_var := '1';
            RegWr_var := '1'; 

        when s9 =>
            M1_var := "10";
            M3_var := '1';
            M11_var := "11";
            T3En_var := '1';
            if (pe_v = '1') then next_state := s10;
            else next_state := s15;
            end if;

        when s10 =>
            next_state := s9;
            M1_var := "10";
            M2_var := '0';
            M9_var := '1';
            M10_var := "10";
            M12_var := "10";
            M13_var := "00";
            MemWr_var := '1';
            T2En_var := '1';
            T4En_var := '1'; 

        when s11 =>
            M7_var := '1';
            M8_var := '1';
            if (comp_out='0') then next_state := s15;
            else next_state := s12;
            end if;

        when s12 => 
            next_state := s15;
            M6_var := '0';
            M12_var := "11";
            M13_var := "11";
            M14_var := '0';
            PCTempWr_var := '1';

        when s13 => 
            next_state := s15;
            M4_var := "00";
            M5_var := "00";
            M6_var := '1';
            M12_var := "11";
            M13_var := "11";
            M14_var := '0';
            PCTempWr_var := '1';
            RegWr_var := '1';

        when s14 => 
            next_state := s15;
            M3_var := '0';
            M4_var := "00";
            M5_var := "00";
            M14_var := '1';
            PCTempWr_var := '1';
            RegWr_var := '1';

        when s15 => 
            if (IRVal(15 downto 12) = "0110") then 
                next_state := s7;
                M1_var := "10";
            else 
                next_state := s0;
            end if;
            PCWr_var := '1';
            
        end case; 

        M1 <= M1_var;
        M4 <= M4_var;
        M5 <= M5_var;
        M10 <= M10_var;
        M11 <= M11_var;
        M12 <= M12_var;
        M13 <= M13_var;
        M2 <= M2_var;
        M3 <= M3_var;
        M6 <= M6_var;
        M7 <= M7_var;
        M8 <= M8_var;
        M9 <= M9_var;
        M14 <= M14_var;
        PCWr <= PCWr_var;
        PCTempWr <= PCTempWr_var;
        MemWr <= MemWr_var;
        IREn <= IREn_var;
        T1En <= T1En_var;
        T2En <= T2En_var;
        T3En <= T3En_var;
        T4En <= T4En_var;
        RegWr <= RegWr_var;
        CEn <= CEn_var;
        ZEn <= ZEn_var;
        Alu_op <= Alu_op_var;	
        
        if(clk'event and (clk = '1')) then
                if(reset = '1') then
                    state <= s0;
                else
                    state <= next_state;
                end if;
        else
        end if;
            
    end process;  
end behaviour;
