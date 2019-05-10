"! API for Initializing the Transactional Buffer of the Travel API
"!
FUNCTION /DMO/FLIGHT_TRAVEL_INITIALI_06.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"----------------------------------------------------------------------
  /dmo/cl_flight_legacy06=>get_instance( )->initialize( ).
ENDFUNCTION.
