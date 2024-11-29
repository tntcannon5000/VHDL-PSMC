library IEEE; -- Include required libraries
use IEEE.STD_LOGIC_1164.ALL;

entity SYNC_TB is
end SYNC_TB;

architecture Behavioral of SYNC_TB is

component SYNC is -- Declaring the SYNC component and its ports
Port ( SYNCIN : in STD_LOGIC;
           CLKIN : in STD_LOGIC;
           RESIN : in STD_LOGIC;
           SYNCOUT : out STD_LOGIC);
end component;

signal syncinput : std_logic := '0'; -- Declaring signals for each port. CLOCK and SYNCINPUT instantiated with '0' for NOT function to work.
signal clockin : std_logic := '0';
signal resetin : std_logic  := '0';
signal syncedout : std_logic;

begin

SYNCHRONISER : SYNC port map (syncinput, clockin, resetin, syncedout); -- Port map for SYNCHRONISER component instantiation

syncinput <= NOT syncinput after 36ns;
clockin <= NOT clockin after 10ns; -- Alternating CLK for a 10ns period


process
begin
wait for 10732924ns; -- Test to see if RES causes component to reset
resetin <= '1';
wait for 100ns;
resetin <= '0';
end process;
end Behavioral;
