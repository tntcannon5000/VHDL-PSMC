library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
Use IEEE.NUMERIC_STD.ALL;

entity PHASE_SHIFTER is
    Port ( SI : in STD_LOGIC;
           CLK : in STD_LOGIC := '1';
           RES : in STD_LOGIC;
           PHI_0 : out STD_LOGIC;
           PHI_90 : out STD_LOGIC);
end PHASE_SHIFTER;

architecture Behavioral of PHASE_SHIFTER is

signal TOGGLE : std_logic;
signal CEA : std_logic;
signal CEB : std_logic;
signal COUNT1OUT : std_logic;
signal COUNT2OUT : std_logic;
signal COUNTER1 : natural := 0;
signal COUNTER2 : natural := 0;
signal SIOUT : std_logic;

component CLK_DIV is 
Port ( MCLK : in STD_LOGIC;
       CLK : out STD_LOGIC);
end component;

begin
    U1_CLK_DIV : CLK_DIV port map (CLK, TOGGLE);
    CEA <= CLK when SI = '0' else
           TOGGLE when SI = '1';
    CEB <= CLK when SI = '1' else
           TOGGLE when SI = '0';
    COUNT1OUT <= '1' when COUNTER1 = 0 else '0';
    COUNT2OUT <= '1' when COUNTER2 = 0 else '0';
    
    PHI_0 <= SI;
    PHI_90 <= (COUNT1OUT OR COUNT2OUT) XNOR SI;
    
    
process(CLK)
begin
    if rising_edge(CLK) then
        SIOUT <= SI;
    end if;
end process;
process(CEA)
begin
        if SI = '1' then
            COUNTER1 <= COUNTER1 + 1;
        elsif SI = '0' AND COUNTER1 > 0 then
            COUNTER1 <= COUNTER1 -1;
    end if;
end process;

process(CEB)
begin
        if SI = '0' then
            COUNTER2 <= COUNTER2 + 1;
        elsif SI = '1' AND COUNTER2 > 0 then
            COUNTER2 <= COUNTER2 -1;
        end if;
end process;

end Behavioral;
