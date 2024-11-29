library IEEE; -- Include required libraries
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PHASE_SHIFTER_TB is
end PHASE_SHIFTER_TB;

architecture Behavioral of PHASE_SHIFTER_TB is

    signal SI_i : STD_LOGIC := '0';        	-- Declaring signals for each of the I/O of the PHASE_SHIFTER. CLK and SI signals initiated with '0' to allow NOT function to work.
    signal CLK_i : STD_LOGIC := '1';
    signal RES_i : STD_LOGIC := '0';
    signal SYNCEDSI : std_logic := '0';
    signal PHI_0_i : STD_LOGIC;
    signal PHI_90_i : STD_LOGIC;
    
    component PHASE_SHIFTER is  -- Declaring the PHASE_SHIFTER component and its ports
    Port ( SI : in STD_LOGIC;
           CLK : in STD_LOGIC;
           RES : in STD_LOGIC;
           PHI_0 : out STD_LOGIC;
           PHI_90 : out STD_LOGIC);
end component;
    
    component SYNC is           -- -- Declaring the SYNC component and its ports
    Port ( SYNCIN : in STD_LOGIC;
           CLKIN : in STD_LOGIC;
           RESIN : in STD_LOGIC;
           SYNCOUT : out STD_LOGIC);
end component;
    
begin
U_PHASE_SHIFTER: PHASE_SHIFTER port map (SYNCEDSI, CLK_i, RES_i, PHI_0_i, PHI_90_i);    -- Port map for PHASE_SHIFTER component to map signals to ports
U_SYNCHRONISER: SYNC port map (SI_i, CLK_i, RES_i, SYNCEDSI);  -- Port map for SYNCHRONISER component to map signals to ports, so SI sent to Phase Shifter is synchronised to CLK.

SI_i <= not(SI_i) after 503ns;   -- Generate a input signal with period of 786ns 
CLK_i <= not(CLK_i) after 10ns;  -- Alternating CLK for testing with a 20us period (50MHz frequency), same as CLK in system.
end Behavioral;
