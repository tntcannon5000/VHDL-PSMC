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
signal test : std_logic := '0';

begin
    process (CLKIN)
    begin
        if (rising_edge(CLKIN)) then
            test <= SYNCIN;
        end if;
    end process;
SYNCOUT <= test;
end Behavioral;
