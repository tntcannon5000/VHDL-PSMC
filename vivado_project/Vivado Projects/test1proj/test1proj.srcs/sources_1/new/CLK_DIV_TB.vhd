----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.11.2022 10:27:26
-- Design Name: 
-- Module Name: CLK_DIV_TB - Behavioral
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

entity CLK_DIV_TB is
end CLK_DIV_TB;

architecture Behavioral of CLK_DIV_TB is

component CLK_DIV is
Port ( MCLK : in STD_LOGIC;
           CLK : out STD_LOGIC);
end component; 

signal mclock : std_logic := '0';
signal clock : std_logic := '0';

begin

DIVIDER : CLK_DIV port map (mclock, clock);
mclock <= NOT mclock after 20ns;

end Behavioral;
