----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2023 12:17:58 PM
-- Design Name: 
-- Module Name: BD_CLK - rtl
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

entity BD_CLK is
    generic (   clock_frequency :integer :=100e6;
                required_frequency :real := 115200.0
             );  
    Port   ( clk : in std_logic;
            chip_en : out std_logic
            );
end BD_CLK;

architecture rtl of BD_CLK is

signal en :STD_LOGIC;
signal teller : integer:=0;
constant required_cycles : integer :=integer(real(clock_frequency)/required_frequency)-1;

begin
adder_on_clk:process(clk)
begin
    if rising_edge(clk) then
        en <= '0';
        teller <= teller + 1;
        
        if required_cycles-1 = teller then
            en <= '1';
            teller <= 0;
            
        end if;

    end if;
end process;
chip_en <= en;
end rtl;
