----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.11.2022 09:59:52
-- Design Name: 
-- Module Name: CLK_DIV - Behavioral
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
-- any Xilinx leaf cells in thiss code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CLK_DIV is
    Port ( MCLK : in STD_LOGIC;
           CLK : out STD_LOGIC);
end CLK_DIV;

architecture Behavioral of CLK_DIV is

begin
    process(MCLK)
    variable clkout : std_logic := '0';
    begin
    if (rising_edge(MCLK)) then
        clkout := NOT clkout;
    end if;
    CLK <= clkout;
end process;
end Behavioral;
