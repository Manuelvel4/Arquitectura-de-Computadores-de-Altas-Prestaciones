-- Copyright (c) 2018, UPC
-- All rights reserved.
--

library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity prueba_S4bits is

end prueba_S4bits;

architecture prueba of prueba_S4bits is

component S4bits is
    generic(ret_xor: time := 15 ns; ret_and: time := 10 ns; ret_or: time := 10 ns);
    port (
        A: in std_logic_vector(3 downto 0);
        B: in std_logic_vector(3 downto 0);
        cen: in std_logic;
        SUM: out std_logic_vector(3 downto 0);
        csal: out std_logic
    );
end component;

signal A, B, SUM: std_logic_vector(3 downto 0);
signal cen, csal: std_logic;

begin
    sumador: S4bits port map (A => A, B => B, cen => cen, csal => csal, SUM => SUM);

    prueba: process
	 variable t0: time := 200 ns; 
    begin
		  -- Antes del instante t0 todas las señales son estables
        A <= x"0";
        B <= x"0";
        cen <= '0';
        wait for t0;
		  -- Despues del instante t0 cambia 1 de las nueve señales
        A <= x"0"; --- 0000
        B <= x"4"; -- 0100
        cen <= '0'; -- 0
        wait for 400 ns;

        A <= x"0";
        B <= x"4";
        cen <= '1';
        wait for 200 ns;
        
        -- Puedes continuar agregando más estímulos de prueba si lo necesitas

        wait; -- Esto evita que el proceso termine
    end process;
end prueba;
