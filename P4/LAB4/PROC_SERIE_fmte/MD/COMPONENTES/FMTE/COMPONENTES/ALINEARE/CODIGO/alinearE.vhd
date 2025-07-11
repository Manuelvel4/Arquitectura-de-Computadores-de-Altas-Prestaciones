--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

use work.param_disenyo_pkg.all;
use work.tipos_constan_memoria_pkg.all;
use work.componentes_FMTE_pkg.all;
use work.cte_tipos_deco_camino_pkg.all;
use work.retardos_pkg.all;

entity alinearE is
port(ent: in tam_dat_camino_MD;
	opMD: in st_opMD;
	sal: out tam_dat_camino_MD);
end alinearE;

architecture estructural of alinearE is

subtype t_byte is std_logic_vector(tam_byte-1 downto 0);

begin
    process(ent, opMD)
    begin
        case opMD(1 downto 0) is
            when "00" =>
                sal <= ent;
            when "01" =>
                sal(31 downto 24) <= ent(15 downto 8);
                sal(23 downto 16) <= ent(7 downto 0);
                sal(15 downto 8)  <= ent(15 downto 8);
                sal(7 downto 0)   <= ent(7 downto 0);
            when "10" =>
                sal(31 downto 24) <= ent(15 downto 8);
                sal(23 downto 16) <= ent(7 downto 0);
                sal(15 downto 8)  <= ent(15 downto 8);
                sal(7 downto 0)   <= ent(7 downto 0);
            when "11" =>
                sal <= (others => 'X');
            when others =>
                sal <= (others => '0');
        end case;
    end process;
end; 


