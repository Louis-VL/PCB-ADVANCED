----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/06/2023 11:03:57 AM
-- Design Name: 
-- Module Name: TESTER_tb - Behavioral
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

entity TESTER_tb is 
    
end TESTER_tb;

architecture behavorial of TESTER_tb is
signal clk, BD_CLK, chip_en, nRST, TX_START, TX_END, TX_PIN : std_logic;

begin
DUT: entity work.BD_CLK (rtl)
generic map(    clock_frequency => 100e6,
                required_frequency => 20.0e6)
port map(   clk => clk,
            chip_en => BD_CLK);
            
DUT_TX: entity work.UART_TX (rtl)           
port map (  CLK => clk,
            BD_CLK => BD_CLK,
            nRST => nRST,
            TX_START => TX_START,
            TX_END => TX_END,
            TX_PIN => TX_PIN,
            STOPBIT2 => FALSE,
            TX_DATA  => "01001101");
            
the_stimuli: process
begin
    nRST <= '1';
    TX_START <= '1';
    clk <= '0';
    wait for 10ns;
    clk <= not clk; -- clk is nu 1 waarde is binnen geklokt
    wait for 10ns;
    clk <= not clk; -- clk is nu 0 waarde nu klaar zetten
    nRST <= '0';
    
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
end behavorial;