library IEEE; -- Include required libraries
use IEEE.STD_LOGIC_1164.ALL;

entity CLK_DIV_TB is
end CLK_DIV_TB;

architecture Behavioral of CLK_DIV_TB is

component CLK_DIV is -- Declaring the CLK_DIV component and its ports
Port ( MCLK : in STD_LOGIC;
           CLK : out STD_LOGIC);
end component; 

signal mclock : std_logic := '0'; -- Declaring signals for each port. MCLOCK instantiated with '0' for NOT function to work.
signal clock : std_logic;

begin

DIVIDER : CLK_DIV port map (mclock, clock); -- Port map for CLK_DIV component instantiation
mclock <= NOT mclock after 20ns; -- Alternating CLK for a 40ns period

end Behavioral;
