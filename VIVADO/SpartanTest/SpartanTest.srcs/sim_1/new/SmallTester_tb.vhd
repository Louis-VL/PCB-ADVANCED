----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/06/2023 12:47:27 PM
-- Design Name: 
-- Module Name: SmallTester_tb - Behavioral
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

entity SmallTester_tb is
--  Port ( );
end SmallTester_tb;

architecture Behavioral of SmallTester_tb is
signal BD_CLK, clk: std_logic;

begin
DUT: entity work.BD_CLK (rtl)
generic map(    clock_frequency => 100e6,
                required_frequency => 20.0e6)
port map(   clk => clk,
            chip_en => BD_CLK);
            
the_stimuli: process            
begin

    clk <= '0';
    wait for 10ns;
    clk <= not clk; -- clk is nu 1 waarde is binnen geklokt
    wait for 10ns;
    clk <= not clk; -- clk is nu 0 waarde nu klaar zetten
    
    for i in 1 to 10000 loop
    wait for 10ns;
    CLK <= not CLK; -- clk is nu 1 waarde is binnen geklokt
    wait for 10ns;
    CLK <= not CLK; -- clk is nu 0 waarde nu klaar zetten
    end loop;
    
    --Einde van de simulatie. Normaal gebruiken we hiervoor wait. 
    --finish werkt beter in Vivado maar heeft als "nadeel" dat de focus op dit tabblad terecht komt ipv het nieuwe 
    std.env.finish;
end process;
end Behavioral;
