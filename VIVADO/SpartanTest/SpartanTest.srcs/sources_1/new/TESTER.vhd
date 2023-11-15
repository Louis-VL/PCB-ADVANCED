----------------------------------------------------------------------------------
-- Company:     TM - De Nayer
-- Engineer:    Louis Van Lommel
-- 
-- Create Date: 11/15/2023 11:49:36 AM
-- Design Name: 
-- Module Name: TESTER - Behavioral
-- Project Name: Spartan Tester
-- Target Devices: XC7S6FTGB-1
-- Tool Versions: 
-- Description: Basic functionality of the spartan dev board
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

entity TESTER is
    Port ( 
    sw : in STD_LOGIC_VECTOR (7 downto 0);
    clk : in STD_LOGIC;
    RsTx : out STD_LOGIC;
    RsRx : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR (7 downto 0);
    JA : out STD_LOGIC_VECTOR (8 downto 1)
    );
end TESTER;

architecture Structural of TESTER is
signal STE, C_ENABLE, UARTX : STD_LOGIC;
component BD_CLK is
    Port ( 
    clk : in STD_LOGIC;
    chip_en : out STD_LOGIC
    );
end component;
    
component UART_TX is
    Port ( 
    CLK, nRst, BD_CLK, TX_START : in STD_LOGIC; 	--Core clock 100MHz 
    STOPBIT2 : in boolean;	-- als true dan 2 stopbits ipv 1TX_DATA : in 
    TX_DATA : in STD_LOGIC_VECTOR (7 downto 0); --De data die verstuurd moet worden.
    TX_END, TX_PIN : out STD_LOGIC	--Hoog waneer de UART_TX niets aan het versturen is
    );
end component;

begin

--Link BD CLOCK
Clock_en: BD_CLK PORT MAP(clk => clk, chip_en => C_ENABLE);
--Link UART TX
UART: UART_TX port map(clk => clk, nRST => sw(0), BD_CLK => C_ENABLE, TX_END => STE, 
TX_START => '1', STOPBIT2 => FALSE, TX_DATA => "01001101", TX_PIN => UARTX);

--Leds are connected to Switches
led(1) <= sw(1);
led(2) <= sw(2);
led(3) <= sw(3);
led(4) <= sw(4);
led(5) <= sw(5);
led(6) <= sw(6);
led(7) <= sw(7);

JA(0) <= C_ENABLE;

RsTx  <= UARTX;
JA(1) <= UARTX;

end structural;
