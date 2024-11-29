----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.11.2022 11:32:07
-- Design Name: 
-- Module Name: REGI_TB - Behavioral
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
 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity REGI_TB is
end REGI_TB;

architecture Behavioral of REGI_TB is

signal      LD_i : std_logic := '0';
signal		Q1_in_i : unsigned(3 downto 0):= (others => '0');
signal		Q2_in_i : unsigned(3 downto 0):= (others => '0');
signal		Q3_in_i : unsigned(3 downto 0):= (others => '0');
signal		Q4_in_i : unsigned(3 downto 0):= (others => '0');
signal		Q5_in_i : unsigned(3 downto 0):= (others => '0');
signal		Q6_in_i : unsigned(3 downto 0):= (others => '0');
signal		OFlow_i : std_logic := '0';
signal		CLK_i : std_logic := '0';
signal		RES_i : std_logic := '0';      
signal		ones_i : unsigned(3 downto 0);
signal		tens_i : unsigned(3 downto 0);
signal		huns_i : unsigned(3 downto 0);
signal		thou_i : unsigned(3 downto 0);
signal		tenthou_i : unsigned (3 downto 0);
signal		hunthou_i: unsigned (3 downto 0);
signal		ERR_i : std_logic;

component REGI is                    -- Entity Declaration
    port (
		LD : in std_logic;
		Q1_in : in unsigned(3 downto 0);
		Q2_in : in unsigned(3 downto 0);
		Q3_in : in unsigned(3 downto 0);
		Q4_in : in unsigned(3 downto 0);
		Q5_in : in unsigned(3 downto 0);
		Q6_in : in unsigned(3 downto 0);
		OFlow : in std_logic;
		CLK : in std_logic;
		RES : in std_logic;      
		ones : out unsigned(3 downto 0);
		tens : out unsigned(3 downto 0);
		huns : out unsigned(3 downto 0);
		thou : out unsigned(3 downto 0);
		tenthou : out unsigned (3 downto 0);
		hunthou: out unsigned (3 downto 0);
		ERR : out std_logic      
      );
end component;

begin

U_REGI: REGI port map (LD_i, Q1_in_i, Q2_in_i, Q3_in_i, Q4_in_i, Q5_in_i, Q6_in_i, OFlow_i, CLK_i, RES_i, ones_i, tens_i, huns_i, thou_i, tenthou_i, hunthou_i, ERR_i);

CLK_i <= NOT CLK_i after 10ns;

process
begin
    Q1_in_i <= "0010";
    Q2_in_i <= "0111";
    Q3_in_i <= "0101";
    Q4_in_i <= "0001";
    Q5_in_i <= "1001";
    Q6_in_i <= "1000";
    wait for 192ns;
    LD_i <= '1';
    wait for 21ns;
    LD_i <= '0';
    wait for 23ns;
    OFlow_i <=  '1';
    wait for 33ns;
    Q1_in_i <= "0100";
    Q2_in_i <= "0101";
    Q3_in_i <= "0111";
    Q4_in_i <= "0011";
    Q5_in_i <= "1000";
    Q6_in_i <= "0001";
    wait for 13ns;
    LD_i <= '1';
    wait for 21ns;
    LD_i <= '0';
    wait for 39ns;
    OFlow_i <= '0';
    wait for 9ns;
    LD_i <='1';
    wait for 20ns;
    LD_i <='0';
    
end process;

end Behavioral;
