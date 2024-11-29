library IEEE;			-- Include required libraries
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TOP_LEVEL is		-- Entity Declaration
    port ( 
      MCLK : in std_logic := '0';       -- Master clock input
      CLR : in  std_logic := '0';       -- (asynchronous) clear input from button
      CONTINUE : in std_logic := '0';      -- continue input from button (to unpause and reset counting once 1s of measurements has passed)
      SENSOR_IN : in std_logic := '0';      -- input signal to be measured
      SW : in unsigned (1 downto 0);            -- input from both switches, allowing for 4 states, which controls the display 
      PHI_0 : out STD_LOGIC;                       -- unshifted output
      PHI_90 : out STD_LOGIC;                    -- 90 degree shifted output
      DIGIT : out std_logic_vector(7 downto 0);     -- DIGIT output, logic vector telling display which segments to enable for the current display
      DIGEN : out std_logic_vector(3 downto 0);         -- DIGEN output, telling the display which segment to update with the value in DIGIT
      LEDS : out unsigned (1 downto 0)              -- LED output for information on which current precision level is being used
      );
end TOP_LEVEL;

architecture Behavioral of TOP_LEVEL is
                                -- Internal signals
signal CLK : std_logic;                 -- Signal to create internal system CLK at 1/2 the master clock rate (50Mhz from 100Mhz)
signal ZERO : std_logic := '0';         -- default zero signal used when one of a component's inputs is optional and unused
signal RES : std_logic;                 -- synchronised CLR input for internal reset to all components
signal CONT : std_logic;                -- synchronised CONTINUE input for frequency calculator to be able to unpause once user has viewed the calculated frequency on the display aftr 1s.
                                        -- This will also reset all the DIV10s, div50k, LD, etc, to allow for frequency to be re-counted
signal SI : std_logic;            -- input waveform synchronised to CLK
signal HEXA : std_logic_vector(3 downto 0);     -- outputs from Frequency calculator's selector to the display module, containing the information for which segments to activate, to display the needed number.
signal HEXB : std_logic_vector(3 downto 0);
signal HEXC : std_logic_vector(3 downto 0);
signal HEXD : std_logic_vector(3 downto 0);
signal DE_Out : std_logic;

component CLK_DIV is					--Clock Divider component declaration with I/O
    Port ( MCLK : in std_logic;
           CLK : out STD_LOGIC);
end component;

component SYNC is					-- synchroniser component declaration with I/O
    Port ( SYNCIN : in STD_LOGIC;
           CLKIN : in STD_LOGIC;
           RESIN : in STD_LOGIC;
           SYNCOUT : out STD_LOGIC);
end component;

component FREQUENCY_CALCULATOR is					--frequency calculator omponent declaration with I/O
    port ( 
      SW : in unsigned (1 downto 0);
      SI : in std_logic;
      CLK : in  std_logic;      
      RES : in std_logic;
      CONT : in std_logic;
      DA : out std_logic_vector(3 downto 0);
      DB : out std_logic_vector(3 downto 0);
      DC : out std_logic_vector(3 downto 0);
      DD : out std_logic_vector(3 downto 0);
      DE : out std_logic;
      LED : out unsigned (1 downto 0)
      );
end component;

component PHASE_SHIFTER is					-- phase shifter component declaration with I/O
    Port ( SI : in STD_LOGIC;
           CLK : in STD_LOGIC := '1';
           RES : in STD_LOGIC;
           PHI_0 : out STD_LOGIC;
           PHI_90 : out STD_LOGIC);
end component;

component DISPLAY is                     -- Display interface component declaration with I/O
port (
	CLK   : in std_logic;
	RES   : in std_logic;		-- display clock, reset
	HEXA  : in std_logic_vector(3 downto 0);
	HEXB  : in std_logic_vector(3 downto 0);
	HEXC  : in std_logic_vector(3 downto 0);
	HEXD  : in std_logic_vector(3 downto 0);
	DE    : in std_logic;
	DIGIT : out std_logic_vector(7 downto 0);		-- LED DISPLAY VALUE
	DIGEN : out std_logic_vector(3 downto 0)		-- LED DISPLAY ENABLE
); 
end component;

begin
    U_CLK_DIV2 : CLK_DIV port map (MCLK, CLK);     -- Instantiating the clock divider component to turn 100Mhz master clock input to 50Mhz system clock
    U_SI_SYNC2 : SYNC port map (SENSOR_IN, CLK, RES, SI);   -- Instantiating a synchroniser component to sync the input signal to CLK
    U_RES_SYNC2 : SYNC port map (CLR, CLK, ZERO, RES);      -- Instantiating a synchroniser component to sync the RESET signal to CLK
    U_CONT_SYNC2 : SYNC port map (CONTINUE, CLK, RES, CONT);-- Instantiating a synchroniser component to sync the CONTINUE (unpause) signal to CLK
    U_PHASE_SHIFTER2 : PHASE_SHIFTER port map (SI, CLK, RES, PHI_0, PHI_90);   -- Instantiating the phase shifter component 
    U_FREQUENCY_CALCULATORR2 : FREQUENCY_CALCULATOR port map (SW, SI, CLK, RES, CONT, HEXA, HEXB, HEXC, HEXD, DE_Out, LEDS);   -- Instantiating the frequency calculator component
    U_DISPLAY2 : DISPLAY port map (CLK, RES, HEXA, HEXB, HEXC, HEXD, DE_Out, DIGIT, DIGEN);   -- Instantiating the display interface component 
    
    -- These mappings connect each component of the system to each other.
end Behavioral;
