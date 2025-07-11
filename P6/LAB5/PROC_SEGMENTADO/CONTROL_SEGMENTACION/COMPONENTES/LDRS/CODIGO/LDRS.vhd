--
-- Copyright (c) 2018, UPC
-- All rights reserved.
-- 

library ieee;
use ieee.std_logic_1164.all;

use work.cte_tipos_deco_camino_pkg.all;
use work.componentes_control_seg_pkg.all;
use work.retardos_cntl_seg_pkg.all;

entity LDRS is
	port(sin_cond : in st_opSEC;
	opsecDL, opsecA : in st_opSEC;
		RS: out std_logic);
end LDRS;


architecture comportamiento of LDRS is
signal or_opsec_opsecA: std_logic;
Begin
	or_opsec_opsecA <= opsecDL(3) or opsecA(3);
   RS <= or_opsec_opsecA or sin_cond(0) after retLDRS;
		
end comportamiento;