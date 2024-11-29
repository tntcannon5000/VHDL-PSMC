library IEEE;                               -- Including needed libraries
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity TOP_LEVEL_TB is                      -- Blank entity statement due to this being a testbench, no I/O
end TOP_LEVEL_TB;

architecture Behavioral of TOP_LEVEL_TB is  -- Architecture statement

component TOP_LEVEL is              -- Declaring the TOP_LEVEL design component and its ports
    port ( 
      MCLK : in std_logic := '0';
      CLR : in  std_logic := '0';
      CONTINUE : in std_logic :='0';      
      SENSOR_IN : in std_logic := '0';
      SW : in unsigned (1 downto 0);
      PHI_0 : out STD_LOGIC;
      PHI_90 : out STD_LOGIC;
      DIGIT : out std_logic_vector(7 downto 0);
      DIGEN : out std_logic_vector(3 downto 0);
      LEDS : out unsigned (1 downto 0)
      );
end component;

signal mclock : std_logic := '0';                   -- Signals to connect I/O to component
signal clearin : std_logic := '0';
signal continuein : std_logic := '0';
signal sensorin : std_logic := '0';
signal switch : unsigned (1 downto 0) := "01";
signal phased0 : std_logic;
signal phased90 : std_logic;
signal digitout : std_logic_vector(7 downto 0);
signal digenout : std_logic_vector(3 downto 0);
signal ledout : unsigned (1 downto 0);

signal CASESWITCH : std_logic_vector(1 downto 0) := "00";   -- Signals to control different input frequencies for testbench
signal SI_IN1 : std_logic := '0';
signal SI_IN2 : std_logic := '0';
signal SI_IN3 : std_logic := '0';



begin

mclock <= not mclock after 5ns;

U_TOP_LEVELLLLLL : TOP_LEVEL port map (mclock, clearin, continuein, sensorin, switch, phased0, phased90, digitout, digenout, ledout);

SI_IN1 <= NOT SI_IN1 after 21us;	-- Test signal 1 with a period of 42us (23810Hz)
SI_IN2 <= NOT SI_IN2 after 503ns;	-- Test signal 2 with a period of 1006ns, to test input frequency near limit (994036Hz)
SI_IN3 <= NOT SI_IN3 after 497ns;	-- Test signal 2 with a period of 994ns, to test OF from last DIV10, (1006036Hz)

sensorin <= SI_IN1 when CASESWITCH = "00" else -- Async switch statement to switch the input to the design between input 
        SI_IN2 when CASESWITCH = "01" else              --frequencies to allow for different test frequencies to be input
        SI_IN3;                                 
                                                
process -- Process with no sensitivity. Will use wait statements to prevent uncontrolled execution.
begin
wait for 1300ms; -- 1300ms is used to allow for timing across 1 second, to calculate frequency, AND to test  
                 --By 1000ms, the frequency calculator internally should read 023810, correlating to the 42us period of SI_IN1, 
                 --and output to display should read "3810" as SW is set to "01". Then, when SW is set to "10", it should read "2381".
switch <= "10";    -- SW changed before continue button is  pressed, allowing user to change accuracy of display while system is paused, allowing user to effectively view the full accuracy, as if 6 7 segment displays were present.
wait for 300ms;   --Viewinng window
CASESWITCH <= "01"; --Switch input to the second test, SI_IN2.
continuein <= '1';  --Continue input to unpause system
wait for 21us;
continuein <= '0';
wait for 850ms;     -- 850ms delay so 1s measurement is nearly finished. 
switch <= "11";         -- Change the display precision once more
wait for 750ms;         -- wait till measurement ends + until continue is input
continuein <= '1';      
wait for 121us;
continuein <= '0';
CASESWITCH <= "11"; -- will use the signal at over 1Mhz to trigger ERR. 
wait for 1500ms;   -- 
continuein <= '1';  --continue and reset
wait for 21us;
continuein <= '0';
clearin <= '1';     -- reset
wait for 21us;
clearin <= '0';
wait for 1300ms; --continue  running till ERR


end process;
end Behavioral;
