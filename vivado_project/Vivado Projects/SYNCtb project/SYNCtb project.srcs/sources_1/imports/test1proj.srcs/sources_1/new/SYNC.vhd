----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.11.2022 10:41:12
-- Design Name: 
-- Module Name: SYNC - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL; 

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SYNC is
    Port ( SYNCIN : in STD_LOGIC;
           CLKIN : in STD_LOGIC;
           RESIN : in STD_LOGIC;
           SYNCOUT : out STD_LOGIC);
end SYNC;

architecture Behavioral of SYNC is

begin
    process (CLKIN, RESIN)
    begin
        if (RESIN = '0') then
            SYNCOUT <= '0';
        else if (rising_edge(CLKIN)) then
            SYNCOUT <= SYNCIN;
        end if;
        end if;                
    end process;
end Behavioral;
