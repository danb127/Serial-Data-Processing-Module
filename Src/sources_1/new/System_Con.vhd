library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity System_Contr is
    port(
    CLK, RESET : in std_logic;
    OP1_IN, OP2_IN,START : in std_logic;
    DONE, OVF, OP_LD, RES_LD,BUFEN1,
    BUFEN2,SRCT1_0, SRCT1_1, SRCT2_0, SRCT2_1,RES_OUT : out std_logic
    );
end System_Contr;

architecture Behavioral of System_Contr is

signal Operand1, Operand2 : std_logic;
signal Temp_OP1, Temp_OP2, Temp_RES1, Temp_RES2 : signed(7 downto 0);
signal OP1, OP2, RESULT : signed(7 downto 0);
signal OVF_T, OVF_S : std_logic := '0';

type state_type is (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, 
                    S11, S12, S13, S14, S15, S16, S17, S18);
signal present_state, next_state : state_type := S0;

begin

process(present_state, START, Operand1, Operand2, OP1, OP2,CLK, RESULT)
    begin
        DONE <= '0';
        OP_LD <= '0';
        RES_LD <= '0';
        BUFEN1 <= '1';
        BUFEN2 <= '1';
        SRCT1_0 <= '0';
        SRCT1_1 <= '0';
        SRCT2_0 <= '0';
        SRCT2_1 <= '0';
        RES_OUT <= '0';
        Temp_OP1 <= OP1;
        Temp_OP2 <= OP2;
        Temp_RES1 <= RESULT;
        Temp_RES2 <= RESULT;
        OVF <= OVF_S; 
         OVF_T <= OVF_S;     
        case present_state is
            when S0 =>
                DONE <= '1';
               -- OVF <= '0';
                OP_LD <= '0';
                RES_LD <= '0';   
                if START = '1' then
                    OVF_T <= '0';
                    next_state <= S1;
                else
                    next_state <= S0;
                end if;
            when S1 =>
                OP_LD <= '1';
                BUFEN1 <= '0';
                BUFEN2 <= '0';
                SRCT1_0 <= '1';
                SRCT1_1 <= '1';
                SRCT2_0 <= '1';
                SRCT2_1 <= '1';
                next_state <= S2;
            when S2 =>
                OP_LD <= '1';
                SRCT1_0 <= '1';
                SRCT1_1 <= '0';
                SRCT2_0 <= '1';
                SRCT2_1 <= '0';
                if Operand1 = '1' then
                    Temp_OP1 <= "10000000";
                else
                    Temp_OP1 <= "00000000";
                end if;
                if Operand2 = '1' then
                     Temp_OP2 <= "10000000";
                else
                     Temp_OP2 <= "00000000";
                end if;
                next_state <= S3;
            when S3 =>
                OP_LD <= '1';
                SRCT1_0 <= '1';
                SRCT1_1 <= '0';
                SRCT2_0 <= '1';
                SRCT2_1 <= '0';
                if Operand1 = '1' then
                    Temp_OP1 <= OP1 + "01000000";
                end if;
                if Operand2 = '1' then
                     Temp_OP2 <= OP2 + "01000000";
                end if;
                next_state <= S4;
            when S4 =>
                OP_LD <= '1';
                SRCT1_0 <= '1';
                SRCT1_1 <= '0';
                SRCT2_0 <= '1';
                SRCT2_1 <= '0';
                if Operand1 = '1' then
                    Temp_OP1 <= OP1 + "00100000";
                end if;
                if Operand2 = '1' then
                    Temp_OP2<= OP2 + "00100000";
                end if;
                next_state <= S5;
            when S5 =>
                OP_LD <= '1';
                SRCT1_0 <= '1';
                SRCT1_1 <= '0';
                SRCT2_0 <= '1';
                SRCT2_1 <= '0';
                if Operand1 = '1' then
                    Temp_OP1 <= OP1 + "00010000";
                end if;
                if Operand2 = '1' then
                    Temp_OP2 <= OP2 + "00010000";
                end if;
                next_state <= S6;
            when S6 =>
                OP_LD <= '1';
                SRCT1_0 <= '1';
                SRCT1_1 <= '0';
                SRCT2_0 <= '1';
                SRCT2_1 <= '0';
                if Operand1 = '1' then
                    Temp_OP1 <= OP1 + "00001000";
                end if;
                if Operand2 = '1' then
                     Temp_OP2 <= OP2 + "00001000";
                end if;
                next_state <= S7;
            when S7 =>
                OP_LD <= '1';
                SRCT1_0 <= '1';
                SRCT1_1 <= '0';
                SRCT2_0 <= '1';
                SRCT2_1 <= '0';
                if Operand1 = '1' then
                    Temp_OP1<= OP1 + "00000100";
                end if;
                if Operand2 = '1' then
                    Temp_OP2 <= OP2 + "00000100";
                end if;
                next_state <= S8;
            when S8 =>
                OP_LD <= '1';
                SRCT1_0 <= '1';
                SRCT1_1 <= '0';
                SRCT2_0 <= '1';
                SRCT2_1 <= '0';
                if Operand1 = '1' then
                   Temp_OP1 <= OP1 + "00000010";
                end if;
                if Operand2 = '1' then
                   Temp_OP2 <= OP2 + "00000010";
                end if;
                next_state <= S9;
            when S9 =>
                OP_LD <= '1';
                SRCT1_0 <= '1';
                SRCT1_1 <= '0';
                SRCT2_0 <= '1';
                SRCT2_1 <= '0';
                if Operand1 = '1' then
                    Temp_OP1 <= OP1 + "00000001";
                end if;
                if Operand2 = '1' then
                    Temp_OP2 <= OP2 + "00000001";
                end if;
                next_state <= S10;
            when S10 =>
                Temp_RES1 <= OP2 - OP1;
                Temp_RES2 <= shift_left(Temp_RES1, 2); -- shifting bits one position will be same as * 4
                if not(OP1(7) = OP2(7)) and not(OP2(7) = Temp_RES1(7)) then
                    OVF_T <= '1';
                elsif not (Temp_RES1(7) = Temp_RES2(7)) then
                    OVF_T <= '1';
                end if;
                next_state <= S11;
            when S11 =>
                RES_LD <= '1';
                SRCT1_0 <= '1';
                SRCT1_1 <= '0';
                SRCT2_0 <= '1';
                SRCT2_1 <= '0';
                RES_OUT <= RESULT(7);
                next_state <= S12;
            when S12 =>
                RES_LD <= '1';
                SRCT1_0 <= '1';
                SRCT1_1 <= '0';
                SRCT2_0 <= '1';
                SRCT2_1 <= '0';
                RES_OUT <=  RESULT(6);
                next_state <= S13;
            when S13 =>
                RES_LD <= '1';
                SRCT1_0 <= '1';
                SRCT1_1 <= '0';
                SRCT2_0 <= '1';
                SRCT2_1 <= '0';
                RES_OUT <=  RESULT(5);
                next_state <= S14;
            when S14 =>
                RES_LD <= '1';
                SRCT1_0 <= '1';
                SRCT1_1 <= '0';
                SRCT2_0 <= '1';
                SRCT2_1 <= '0';
                RES_OUT <=  RESULT(4);
                next_state <= S15;
            when S15 =>
                RES_LD <= '1';
                SRCT1_0 <= '1';
                SRCT1_1 <= '0';
                SRCT2_0 <= '1';
                SRCT2_1 <= '0';
                RES_OUT <=  RESULT(3);
                next_state <= S16;
            when S16 =>
                RES_LD <= '1';
                SRCT1_0 <= '1';
                SRCT1_1 <= '0';
                SRCT2_0 <= '1';
                SRCT2_1 <= '0';
                RES_OUT <=  RESULT(2);
                next_state <= S17;
            when S17 =>
                RES_LD <= '1';
                SRCT1_0 <= '1';
                SRCT1_1 <= '0';
                SRCT2_0 <= '1';
                SRCT2_1 <= '0';
                RES_OUT <=  RESULT(1);
                next_state <= S18;
            when S18 =>
                RES_LD <= '1';
                SRCT1_0 <= '1';
                SRCT1_1 <= '0';
                SRCT2_0 <= '1';
                SRCT2_1 <= '0';
                RES_OUT <=  RESULT(0);
                next_state <= S0;
        end case;
    end process;
    
 process(CLK, RESET)
    begin
        if RESET = '0' then
            present_state <= S0;
        elsif rising_edge(CLK) then
            present_state <= next_state;
            Operand1 <= OP1_IN;
            Operand2 <= OP2_IN;
            OP1 <= Temp_OP1;
            OP2 <= Temp_OP2;
            RESULT <= Temp_RES2;
            OVF_S<=OVF_T;
        end if;
    end process;

end Behavioral;
