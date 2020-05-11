--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:10:51 05/11/2020
-- Design Name:   
-- Module Name:   C:/Users/vinja/Desktop/git-project/Notifications/MUX41_If-Else/MUX41_If_Else_Test_Bench.vhd
-- Project Name:  MUX41_If-Else
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX41_If_Else
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
 
ENTITY MUX41_If_Else_Test_Bench IS
END MUX41_If_Else_Test_Bench;
 
ARCHITECTURE behavior OF MUX41_If_Else_Test_Bench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX41_If_Else
    PORT(
         Input : IN  std_logic_vector(3 downto 0);
         Selec : IN  std_logic_vector(1 downto 0);
         Output : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Input : std_logic_vector(3 downto 0) := (others => '0');
   signal Selec : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Output : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX41_If_Else PORT MAP (
          Input => Input,
          Selec => Selec,
          Output => Output
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      Selec<="00" ; Input<="0001" ; wait for 100 ns;	
		Selec<="01" ; Input<="0010" ; wait for 100 ns;	
		Selec<="10" ; Input<="0100" ; wait for 100 ns;
		Selec<="11" ; Input<="1000" ; wait for 100 ns;	

      

      -- insert stimulus here 

      wait;
   end process;

END;
