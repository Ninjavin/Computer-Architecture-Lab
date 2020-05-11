--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:43:34 05/11/2020
-- Design Name:   
-- Module Name:   C:/Users/vinja/Desktop/git-project/Notifications/MUX21_DataFlow/MUX21_DataFlow_Test_Bench.vhd
-- Project Name:  MUX21_DataFlow
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX21_DataFlow
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY MUX21_DataFlow_Test_Bench IS
END MUX21_DataFlow_Test_Bench;
 
ARCHITECTURE behavior OF MUX21_DataFlow_Test_Bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX21_DataFlow
    PORT(
         Input0 : IN  std_logic;
         Input1 : IN  std_logic;
         S : IN  std_logic;
         Output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Input0 : std_logic := '0';
   signal Input1 : std_logic := '0';
   signal S : std_logic := '0';

 	--Outputs
   signal Output : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX21_DataFlow PORT MAP (
          Input0 => Input0,
          Input1 => Input1,
          S => S,
          Output => Output
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      S<='0' ; Input1<='0' ; Input0<='0' ; wait for 100 ns;	
		S<='0' ; Input1<='0' ; Input0<='1' ; wait for 100 ns;	
		S<='1' ; Input1<='1' ; Input0<='0' ; wait for 100 ns;	
		S<='1' ; Input1<='1' ; Input0<='1' ; wait for 100 ns;	

 

      -- insert stimulus here 

      wait;
   end process;

END;
