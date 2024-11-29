----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.11.2022 12:19:08
-- Design Name: 
-- Module Name: SELECT_TB - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity SELECTOR_TB is
end SELECTOR_TB;

architecture Behavioral of SELECTOR_TB is

signal           X1_i : unsigned(3 downto 0); 
signal           X10_i : unsigned(3 downto 0);
signal           X100_i : unsigned(3 downto 0);
signal           X1000_i : unsigned(3 downto 0);
signal           X10000_i : unsigned(3 downto 0);
signal           X100000_i : unsigned(3 downto 0);
signal           SW_i : unsigned (1 downto 0);
signal           ERR_i : std_logic;
signal           DA_i : unsigned(3 downto 0);
signal           DB_i : unsigned(3 downto 0);
signal           DC_i : unsigned(3 downto 0);
signal           DD_i : unsigned(3 downto 0);
signal           LED_i : unsigned (1 downto 0);

component SELECTOR is
    Port ( X1 : in unsigned(3 downto 0); 
           X10 : in unsigned(3 downto 0);
           X100 : in unsigned(3 downto 0);
           X1000 : in unsigned(3 downto 0);
           X10000 : in unsigned(3 downto 0);
           X100000 : in unsigned(3 downto 0);
           SW : in unsigned (1 downto 0);
           ERR : in std_logic;
           DA : out unsigned(3 downto 0);
           DB : out unsigned(3 downto 0);
           DC : out unsigned(3 downto 0);
           DD : out unsigned(3 downto 0);
           LED : out unsigned (1 downto 0)
           );
end component;

begin
U_SELECTOR: SELECTOR port map(X1_i, X10_i, X100_i, X1000_i, X10000_i, X100000_i, SW_i, ERR_i, DA_i, DB_i, DC_i, DD_i, LED_i);

process
    begin
        X1_i <= "1001";
        X10_i <= "0001";
        X100_i <= "0011";
        X1000_i <= "0100";
        X10000_i <= "0000";
        X100000_i <= "0000";
        SW_i <= "01";
        wait for 100ns;
        
        X1_i <= "0010";
        X10_i <= "0111";
        X100_i <= "0101";
        X1000_i <= "0001";
        X10000_i <= "1001";
        X100000_i <= "0000";
        SW_i <= "01";
        wait for 100ns;
        
        X1_i <= "0010";
        X10_i <= "0111";
        X100_i <= "0101";
        X1000_i <= "0001";
        X10000_i <= "1001";
        X100000_i <= "0000";
        SW_i <= "10";
        wait for 100ns;
        
        X1_i <= "0010";
        X10_i <= "0111";
        X100_i <= "0101";
        X1000_i <= "0001";
        X10000_i <= "1001";
        X100000_i <= "0000";
        SW_i <= "00";
        wait for 100ns;
        
        X1_i <= "0010";
        X10_i <= "0111";
        X100_i <= "0101";
        X1000_i <= "0001";
        X10000_i <= "1001";
        X100000_i <= "1000";
        SW_i <= "11";
        wait for 100ns;
        
        X1_i <= "0010";
        X10_i <= "0111";
        X100_i <= "0101";
        X1000_i <= "0001";
        X10000_i <= "1001";
        X100000_i <= "1000";
        SW_i <= "01";
        wait for 100ns;
        
        X1_i <= "0010";
        X10_i <= "0111";
        X100_i <= "0101";
        X1000_i <= "0001";
        X10000_i <= "1001";
        X100000_i <= "1000";
        SW_i <= "01";
        wait for 100ns;
        
        ERR_i <= '1';
        wait for 100ns;
        
        X1_i <= "0010";
        X10_i <= "0111";
        X100_i <= "0101";
        X1000_i <= "0001";
        X10000_i <= "1001";
        X100000_i <= "1000";
        SW_i <= "01";
        ERR_i <= '0';
        wait for 100ns;
        
     end process;
end Behavioral;
