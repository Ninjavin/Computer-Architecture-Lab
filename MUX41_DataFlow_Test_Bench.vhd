--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:56:33 05/11/2020
-- Design Name:   
-- Module Name:   C:/Users/vinja/Desktop/git-project/Notifications/MUX41_DataFlow/MUX41_DataFlow_Test_Bench.vhd
-- Project Name:  MUX41_DataFlow
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX41_DataFlow
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
 
ENTITY MUX41_DataFlow_Test_Bench IS
END MUX41_DataFlow_Test_Bench;
 
ARCHITECTURE behavior OF MUX41_DataFlow_Test_Bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX41_DataFlow
    PORT(
         Input_0 : IN  std_logic;
         Input_1 : IN  std_logic;
         Input_2 : IN  std_logic;
         Input_3 : IN  std_logic;
         Select_0 : IN  std_logic;
         Select_1 : IN  std_logic;
         Output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Input_0 : std_logic := '0';
   signal Input_1 : std_logic := '0';
   signal Input_2 : std_logic := '0';
   signal Input_3 : std_logic := '0';
   signal Select_0 : std_logic := '0';
   signal Select_1 : std_logic := '0';

 	--Outputs
   signal Output : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX41_DataFlow PORT MAP (
          Input_0 => Input_0,
          Input_1 => Input_1,
          Input_2 => Input_2,
          Input_3 => Input_3,
          Select_0 => Select_0,
          Select_1 => Select_1,
          Output => Output
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      Input_3<='0' ; Input_2<='0' ; Input_1<='0' ; Input_0<='1' ; Select_1<='0' ; Select_0<='0' ; wait for 100 ns;	
		Input_3<='0' ; Input_2<='0' ; Input_1<='1' ; Input_0<='0' ; Select_1<='0' ; Select_0<='1' ; wait for 100 ns;	
		Input_3<='0' ; Input_2<='1' ; Input_1<='0' ; Input_0<='0' ; Select_1<='1' ; Select_0<='0' ; wait for 100 ns;	
		Input_3<='1' ; Input_2<='0' ; Input_1<='0' ; Input_0<='0' ; Select_1<='1' ; Select_0<='1' ; wait for 100 ns;	

      -- insert stimulus here 

      wait;
   end process;

END;
