create or replace package body xxext_flexevents_pkg is
--+=======================================================================
--| HEADER
--|   $Header$
--|
--| AUTHOR
--|   Jorg Ramb (megapatch)
--|
--| DESCRIPTION
--|   This package contains the core functionality used for flexevents.
--|
--+=======================================================================


C_LOG_PACKAGE   varchar2(200) := 'xxext.plsql.xxext_flexevents_pkg';
C_LOG_CTX       varchar2(32);
V_LOG_TRACE     varchar2(80);


-- Helper functions {{{
procedure debug
  ( p_trace in varchar2
  , p_string in varchar2
  , p_severity in number := fnd_log.level_statement)
is  -- {{{
begin
  V_LOG_TRACE := p_trace;
  if(p_severity >= FND_LOG.G_CURRENT_RUNTIME_LEVEL) then
    fnd_log.string(p_severity,C_LOG_PACKAGE||'.'||V_LOG_TRACE,
      case when C_LOG_CTX is null then p_string else C_LOG_CTX||':'||p_string end);
  end if;
  if G_DEBUG_FLAG='Y' then
    dbms_output.put_line(C_LOG_PACKAGE||'.'||V_LOG_TRACE
      ||':'||case when C_LOG_CTX is null then p_string else C_LOG_CTX||':'||p_string end);
  end if;
end debug; --}}}

--}}}






end xxext_flexevents_pkg;
/

show errors

