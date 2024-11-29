library IEEE;           -- Include required libraries
use IEEE.STD_LOGIC_1164.ALL;
Use IEEE.NUMERIC_STD.ALL;

entity PHASE_SHIFTER is             -- Port IO Declarations
    Port ( SI : in STD_LOGIC;
           CLK : in STD_LOGIC := '1';
           RES : in STD_LOGIC;
           PHI_0 : out STD_LOGIC;
           PHI_90 : out STD_LOGIC);
end PHASE_SHIFTER;

architecture Behavioral of PHASE_SHIFTER is

signal TOGGLE : std_logic;      --  TOGGLE signal, half the frequency of CLK
signal CEA : std_logic;         
signal CEB : std_logic;
signal COUNTER1 : natural := 0; -- Counter which counts down at 2x the count-up rate, using TOGGLE and CLK
signal COUNTER2 : natural := 0; 
signal COUNT1OUT : std_logic;   -- Output of counter whilst counter has reached 0
signal COUNT2OUT : std_logic;   -- Output of counter whilst counter has reached 0

component CLK_DIV is        -- clock divider to create TOGGLE signal easily
Port ( MCLK : in STD_LOGIC;
       CLK : out STD_LOGIC);
end component;

begin
    U1_CLK_DIV : CLK_DIV port map (CLK, TOGGLE); -- Instantiating CLK Divider component
    CEA <= CLK when SI = '0' else      -- creating signal with variable count rate based on SI
           TOGGLE when SI = '1';
    CEB <= CLK when SI = '1' else      -- creating signal with variable count rate based on NOT SI
           TOGGLE when SI = '0';
    COUNT1OUT <= '1' when COUNTER1 = 0 else '0';   --signal compoent to be combined to create phase shifted SI
    COUNT2OUT <= '1' when COUNTER2 = 0 else '0';   --signal compoent to be combined to create phase shifted SI
    
    PHI_0 <= SI;             -- SI output
    PHI_90 <= (COUNT1OUT OR COUNT2OUT) XNOR SI;  -- phase shifted output
    
    
process(CEA) -- process sensitive to CEA, (so will trigger on rising and falling edges) to count-up and down 
begin
        if SI = '1' then  
            COUNTER1 <= COUNTER1 + 1;   -- Count UP if SI = '1', (implicitly due to CEA waveform, will count up slower)
        elsif SI = '0' AND COUNTER1 > 0 then 
            COUNTER1 <= COUNTER1 -1;    -- Count DOWN if SI= '0' until it reaches 0 (due to CEA, will count down at 2x the rate)
    end if;
end process;

process(CEB) -- process sensitive to CEB, (so will trigger on rising and falling edges) to count-up and down 
begin
        if SI = '0' then
            COUNTER2 <= COUNTER2 + 1; -- Count UP if SI = '0', (implicitly due to CEB waveform, will count up slower)
        elsif SI = '1' AND COUNTER2 > 0 then
            COUNTER2 <= COUNTER2 -1; -- Count DOWN if SI= '1' until it reaches 0 (due to CEB, will count down at 2x the rate)
        end if;
end process;

end Behavioral;
