----------------------------------------------------------------------------------
-- Company:  Uberclock
-- Engineer: Logxen
-- 
-- Create Date:    13:54:01 11/26/2013 
-- Design Name: 
-- Module Name:    Wing_Encoder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Wing_Encoder is
   port (    
			 enc_btn : out std_logic;
			 enc_a : out std_logic;
			 enc_b : out std_logic;
			 enc_led_r : in std_logic;
			 enc_led_g : in std_logic;
			 enc_led_b : in std_logic;
			 btn_btn : out std_logic;
			 btn_led : in std_logic;
			 wt_miso: inout std_logic_vector(7 downto 0); 
			 wt_mosi: inout std_logic_vector(7 downto 0)			 
			 );	
end Wing_Encoder;

architecture Behavioral of Wing_Encoder is

begin
wt_miso(0) <= wt_mosi(0);
wt_miso(1) <= enc_led_b;
wt_miso(2) <= enc_led_g;
wt_miso(3) <= enc_led_r;
wt_miso(4) <= wt_mosi(4);
wt_miso(5) <= wt_mosi(5);
wt_miso(6) <= wt_mosi(6);
wt_miso(7) <= btn_led;

enc_btn <= wt_miso(0);
enc_a <= wt_miso(4);
enc_b <= wt_miso(5);
btn_btn <= wt_miso(6);
end Behavioral;

