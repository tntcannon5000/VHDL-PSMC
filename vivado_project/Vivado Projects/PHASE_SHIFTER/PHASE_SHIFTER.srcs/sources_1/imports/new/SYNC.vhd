library IEEE; -- Include required libraries
use IEEE.STD_LOGIC_1164.ALL;

entity SYNC is	-- Port IO Declarations
    Port ( SYNCIN : in STD_LOGIC;
           CLKIN : in STD_LOGIC;
           RESIN : in STD_LOGIC;
           SYNCOUT : out STD_LOGIC);
end SYNC;

architecture Behavioral of SYNC is

signal internal : std_logic := '0';

begin
    process (CLKIN, RESIN)  -- Beginning process sensitive to the CLK and RESET
    begin
        if (RESIN = '1') then -- Function to reset SYNC Component
            SYNCOUT <= '0'; 
            internal <= '0';
        else if (rising_edge(CLKIN)) then
            SYNCOUT <= internal; -- SYNCOUT <= internal assignment behaves as one D-Flip Flop, while the assignment of the SYNCIN signal outward behaves as the second.
			internal <= SYNCIN;
        end if;
        end if;
    end process;
end Behavioral;
