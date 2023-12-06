----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/06/2023 12:40:12 PM
-- Design Name: 
-- Module Name: SmallTester - structural
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

entity SmallTester is
Port(   
        sw : in STD_LOGIC_VECTOR (7 downto 0);
        clk : in STD_LOGIC;
        led : out STD_LOGIC_VECTOR (7 downto 0);
        JA : out STD_LOGIC_VECTOR (8 downto 1)
        );
end SmallTester;

architecture structural of SmallTester is
signal C_ENABLE: STD_LOGIC;
component BD_CLK is
    Port ( 
    clk : in STD_LOGIC;
    chip_en : out STD_LOGIC
    );
end component;

begin

--Link BD CLOCK
Clock_en: BD_CLK PORT MAP(clk => clk, chip_en => C_ENABLE);

--Leds are connected to Switches
led(0) <= sw(0);
led(1) <= sw(1);
led(2) <= sw(2);
led(3) <= sw(3);
led(4) <= sw(4);
led(5) <= sw(5);
led(6) <= sw(6);
led(7) <= sw(7);

JA(1) <= C_ENABLE;
end structural;
