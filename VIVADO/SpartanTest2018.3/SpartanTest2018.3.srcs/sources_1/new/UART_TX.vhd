----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/15/2023 12:17:58 PM
-- Design Name: 
-- Module Name: UART_TX - rtl
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

entity UART_TX is 
    generic ( n : integer :=8 );
    Port ( 
        CLK :       in STD_LOGIC;
        nRST :      in STD_LOGIC;
        BD_CLK :    in STD_LOGIC;
        STOPBIT2 :  in boolean;
        TX_DATA :   in STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        TX_START :  in STD_LOGIC;
        TX_END :    out STD_LOGIC;
        TX_PIN :    out STD_LOGIC
    );
           
end UART_TX;

architecture rtl of UART_TX is

    type t_state is (waitstart, waitsync, SSB, SDB, SSB1, SSB2);
    signal State : t_State;
    
    signal teller : integer :=0;
    
begin
adder_on_clk:process(clk)
begin
    if rising_edge(clk) then
        
        case state is
        when waitstart =>
         TX_END <= '1';
         TX_PIN <= '1';
         if TX_START = '1' then
          state <= waitsync;
         end if;
          
            
            when waitsync =>
             TX_END <= '0';
             TX_PIN <= '1';
             if BD_CLK = '1' then
             
              state <= SSB;
             end if;
             
                when SSB =>
                 TX_END <= '0';
                 TX_PIN <= '0';
                 teller <= 0;
                 if BD_CLK = '1' then
                 
                  state <= SDB;
                 end if;
                 
                    when SDB =>
                     TX_END <= '0';
                     TX_PIN <= TX_DATA(teller);
                     if BD_CLK = '1' then
                     teller <= teller + 1;
                       if teller = n-1 then
                        teller <= 0;
                        state <= SSB1;
                       end if;
                       
                     end if;
                     
                    
                        when SSB1 =>
                         TX_END <= '0';
                         TX_PIN <= '1';
                         if BD_CLK = '1' AND STOPBIT2 = FALSE then
                         
                          state <= waitsync;
                         end if;
                         if BD_CLK = '1' AND STOPBIT2 = TRUE then
                         
                          state <= SSB2;
                         end if;
                            
                            when SSB2 =>
                             TX_END <= '0';
                             TX_PIN <= '1';
                             if BD_CLK = '1' then
                              state <= waitsync;
                             end if;
                        
        end case;
        
        if nRST = '1' then
         state <= waitstart;
        end if;
        
    end if;    
end process;
end rtl;
