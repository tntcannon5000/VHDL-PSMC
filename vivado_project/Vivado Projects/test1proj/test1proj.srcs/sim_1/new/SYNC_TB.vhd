----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04.11.2022 11:19:52
-- Design Name: 
-- Module Name: SYNC_TB - Behavioral
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

entity SYNC_TB is
end SYNC_TB;

architecture Behavioral2 of SYNC_TB is

component SYNC is
Port ( SYNCIN : in STD_LOGIC;
           CLKIN : in STD_LOGIC;
           RESIN : in STD_LOGIC;
           SYNCOUT : out STD_LOGIC);
end component;

signal syncinput : std_logic := '0';
signal clockin : std_logic := '0';
signal resetin : std_logic  := '0';
signal syncedout : std_logic := '0';

begin

SYNCHRONISER : SYNC port map (syncinput, clockin, resetin, syncedout);

syncinput <= NOT syncinput after 20ns;
clockin <= NOT clockin after 19ns;

process
begin
wait for 400ns;
resetin <= '1';
wait for 38ns;
resetin <= '0';
end process;
end Behavioral2;
