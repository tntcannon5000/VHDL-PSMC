library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FREQUENCY_CALCULATOR_TB is
end FREQUENCY_CALCULATOR_TB;

architecture Behavioral of FREQUENCY_CALCULATOR_TB is

signal      SW_i : unsigned (1 downto 0) := "01";
signal      SI_i : std_logic := '0';
signal      CLK_i :  std_logic := '0';      
signal      RES_i : std_logic := '0';
signal      DA_i : unsigned(3 downto 0);
signal      DB_i : unsigned(3 downto 0);
signal      DC_i : unsigned(3 downto 0);
signal      DD_i : unsigned(3 downto 0);
signal      DE_i : std_logic;
signal      LED_i : unsigned (1 downto 0);

component FREQUENCY_CALCULATOR is
    port ( 
      SW : in unsigned (1 downto 0);
      SI : in std_logic;
      CLK : in  std_logic;      
      RES : in std_logic;
      DA : out unsigned(3 downto 0);
      DB : out unsigned(3 downto 0);
      DC : out unsigned(3 downto 0);
      DD : out unsigned(3 downto 0);
      DE : out std_logic;
      LED : out unsigned (1 downto 0)   
      );
end component;

begin
U_FREQUENCY_CALCULATOR : FREQUENCY_CALCULATOR port map (SW_i, SI_i, CLK_i, RES_i, DA_i, DB_i, DC_i, DD_i, DE_i, LED_i);

CLK_i <= NOT CLK_i after 10us;
SI_i <= NOT SI_i after 55us;

end Behavioral;
