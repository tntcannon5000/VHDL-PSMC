library IEEE; -- Include required libraries
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FREQUENCY_CALCULATOR_TB is
end FREQUENCY_CALCULATOR_TB;

architecture Behavioral of FREQUENCY_CALCULATOR_TB is

signal      SW_i : unsigned (1 downto 0) := "01";	-- Declaring signals for each of the I/O of the FREQUENCY_CALCULATOR. CLK and SI signals initiated with '0' to allow NOT function to work.
signal      SI_i : std_logic := '0';
signal      CLK_i :  std_logic := '0';      
signal      RES_i : std_logic := '0';
signal      DA_i : std_logic_vector(3 downto 0);
signal      DB_i : std_logic_vector(3 downto 0);
signal      DC_i : std_logic_vector(3 downto 0);
signal      DD_i : std_logic_vector(3 downto 0);
signal      DE_i : std_logic;
signal      LED_i : unsigned (1 downto 0);
signal CASESWITCH : std_logic_vector(1 downto 0) := "00";
signal SI_IN1 : std_logic := '0';
signal SI_IN2 : std_logic := '0';
signal SI_IN3 : std_logic := '0';


component FREQUENCY_CALCULATOR is  -- Declaring the FREQUENCY_CALCULATOR component and its ports
    port ( 
      SW : in unsigned (1 downto 0);
      SI : in std_logic;
      CLK : in  std_logic;      
      RES : in std_logic;
      DA : out std_logic_vector(3 downto 0);
      DB : out std_logic_vector(3 downto 0);
      DC : out std_logic_vector(3 downto 0);
      DD : out std_logic_vector(3 downto 0);
      DE : out std_logic;
      LED : out unsigned (1 downto 0)
      );
end component;

begin
U_FREQUENCY_CALCULATOR : FREQUENCY_CALCULATOR port map (SW_i, SI_i, CLK_i, RES_i, DA_i, DB_i, DC_i, DD_i, DE_i, LED_i);  -- Port map for FREQUENCY_CALCULATOR component instantiation

CLK_i <= NOT CLK_i after 10ns; -- Alternating CLK for testing with a 20ns period. (50MHz)
SI_IN1 <= NOT SI_IN1 after 21us;	-- Test signal 1 with a period of 42us
SI_IN2 <= NOT SI_IN2 after 503ns;	-- Test signal 2 with a period of 503us, to test input frequency near limit
SI_IN3 <= NOT SI_IN3 after 497ns;	-- Test signal 2 with a period of 497ns, to test OF from last DIV10

SI_i <= SI_IN1 when CASESWITCH = "00" else 
        SI_IN2 when CASESWITCH = "01" else 
        SI_IN3;                                 -- Async switch statement to switch the input to the FREQUENCY_CALCULATOR between input 
                                                --frequencies to allow for different test frequencies to be ran.


process -- Process with no sensitivity. Will use wait statements to prevent uncontrolled execution.
begin
wait for 1000ms; -- 1000ms is used to allow for timing across 1 second, to calculate frequency. 
                 --By 1000ms, the frequency calculator internally should read 23810, correlating to the 42us period of SI_IN1, 
                 --and output should read "3810" from SEL output on next LD, as SW is set to "01"
CASESWITCH <= "01"; -- Switching the input to the second signal.
RES_i <= '1'; -- Reset test
wait for 21us;
RES_i <= '0';
wait for 100ms; -- test to ensure SW can be changed whenever
SW_i <= "11";
wait for 901ms; -- By 2001ms, the frequency calculator should read 994035 and should output 9940 rom SEL as SW is set to "11"
RES_i <= '1'; -- Reset test
wait for 21us;
RES_i <= '0';
SW_i <= "01";
CASESWITCH <= "11";
wait for 1001ms; -- Before 3000ms, the frequency calculator should have overflowed from SI_IN3, and should reset and output "0000" and read 0 until reset 
RES_i <= '1'; -- Reset test
wait for 21us;
RES_i <= '0'; -- Run frequency calculator for 1s more, testing the SW_i value of "10", should read output as "9403" from SEL 
SW_i <= "10";
CASESWITCH <= "01";
wait for 1001ms;
wait;
end process;
end Behavioral;
