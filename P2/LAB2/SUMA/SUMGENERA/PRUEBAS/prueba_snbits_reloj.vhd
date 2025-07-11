--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 
use ieee.math_real.all;

entity prueba_snbits_reloj is 
generic(tam : integer := 4; periododiv2 : time := 200 ns);
end prueba_snbits_reloj;

architecture prueba of prueba_snbits_reloj is

component snbits is
	generic (tam: positive:= tam);
	port (a: in std_logic_vector(tam-1 downto 0);
		b: in std_logic_vector(tam-1 downto 0);
		cen: in std_logic;
		s: out std_logic_vector(tam-1 downto 0);
		csal: out std_logic);
end component;

component snref
    generic (tam: positive := tam);
    port (
        A: in std_logic_vector(tam-1 downto 0);
        B: in std_logic_vector(tam-1 downto 0);
        cen: in std_logic;
        SUM: out std_logic_vector(tam-1 downto 0);
        csal: out std_logic
    );
end component;

signal A, B, SUM, SUMref: std_logic_vector(tam-1 downto 0);
signal cen, csal, csalref: std_logic;
signal csal_SUM: std_logic_vector(tam downto 0);

signal errores: integer:= 0;

signal reloj: std_logic;
signal final: std_logic := '0';

begin
sumador: snbits generic map(tam => tam)
    port map (A => A, B => B, cen => cen, csal => csal, s => SUM);

sumadoref: snref generic map (tam => tam)
    port map (A => A, B => B, cen => cen, csal => csalref, SUM => SUMref);
	 
	csal_SUM <= csal & SUM;

estimulos: process
variable t_retardo: time;
variable t_retardo_ns : integer;
-- resto de variables
-- Declare the min and max variables
variable retardo_max : integer := integer'low; -- Initialize to lowest possible integer
variable retardo_min : integer := integer'high; -- Initialize to highest possible integer

-- Declare variables to hold the corresponding values of A, B, and cen
variable A_max : std_logic_vector(tam - 1 downto 0);
variable B_max : std_logic_vector(tam - 1 downto 0);
variable cen_max : std_logic;

variable A_min : std_logic_vector(tam - 1 downto 0);
variable B_min : std_logic_vector(tam - 1 downto 0);
variable cen_min : std_logic;

-- Flag to check if the minimum has been updated
variable min_initialized : boolean := false;

begin
	for aca in 0 to 1 loop
		for i in 0 to 5 loop
			for j in 0 to 5 loop
				A <= std_logic_vector(to_unsigned(i,tam));
				B <= std_logic_vector(to_unsigned(j,tam));
				if aca = 0 then
					cen <= '0';
				else
					cen <= '1';
				end if;
				
				wait until reloj = '0' and reloj'event;

				t_retardo := periododiv2 - csal_SUM'last_event;
				
				-- Convert t_retardo to an integer in nanoseconds
            
            t_retardo_ns := integer(t_retardo / 1 ns);  -- Convert time to nanoseconds
				
				-- Update max and min delay values
            if t_retardo_ns <300 and t_retardo_ns > retardo_max then
                retardo_max := t_retardo_ns; -- Update max
                A_max := A;                   -- Store corresponding A value
                B_max := B;                   -- Store corresponding B value
                cen_max := cen;               -- Store corresponding cen value
            end if;

            if (not min_initialized) or (t_retardo_ns < retardo_min) then
                retardo_min := t_retardo_ns; -- Update min
                A_min := A;                   -- Store corresponding A value
                B_min := B;                   -- Store corresponding B value
                cen_min := cen;               -- Store corresponding cen value
                min_initialized := true;      -- Set the flag to true
            end if;
						
            report "Time delay (nanoseconds): " & integer'image(t_retardo_ns);

				assert ((csal_SUM) = (csalref & SUMref));

                if(to_integer(unsigned(csal_SUM)) /= (i+j+aca)) then
                    errores <= errores + 1;
                end if; 

				A <= (others => 'U');
				B <= (others => 'U');
				cen <= 'U';
				wait until reloj = '1' and reloj'event;
			end loop; 
		end loop; 
	end loop; 

	report "numero de errores: " & integer'image(errores);
	report "Maximum time delay (nanoseconds): " & integer'image(retardo_max);
	report "Value of A_max: " & to_string(A_max);
	report "Value of B_max: " & to_string(B_max);
	report "Value of Cen_max: " & to_string(Cen_max);
	report "Minimum time delay (nanoseconds): " & integer'image(retardo_min);
	report "Value of A_min: " & to_string(A_min);
	report "Value of B_min: " & to_string(B_min);
	report "Value of Cen_min: " & to_string(Cen_min);

	final <= '1';
	wait;
end process;

rlj: process 	
variable iter : integer := 0;	
begin	
	reloj <= '0'; wait for periododiv2;	
	reloj <= '1'; wait for periododiv2;	
	if final = '1' then	
			wait;	
	end if;	
end process;


end prueba;

