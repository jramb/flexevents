create or replace package xxext_flexevents_pkg is
--+=======================================================================
--| HEADER
--|   $Header$
--|
--| DESCRIPTION
--|   This package contains the core functionality used for flexevents.
--|
--| AUTHOR
--|   Jorg Ramb (megapatch)
--|
--|
--+=======================================================================
function C_VER_HEAD return varchar2;
function C_VER_BODY return varchar2;
--+=======================================================================

G_DEBUG_FLAG varchar2(1) := 'N';



end xxext_flexevents_pkg;
/

show errors

