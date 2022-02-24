#if __TARGET_TOFINO__ == 2
#include <t2na.p4>
#else
#include <tna.p4>
#endif

#include "types.p4"
#include "constants.p4"
#include "headers.p4"

#include "netcache_pipe0.p4"
#include "netcache_pipe1.p4"

Pipeline(Pipe0SwitchIngressParser(),
         Pipe0SwitchIngress(),
         Pipe0SwitchIngressDeparser(),
         Pipe0SwitchEgressParser(),
         Pipe0SwitchEgress(),
         Pipe0SwitchEgressDeparser()) nc_pipe_0;

Pipeline(Pipe1SwitchIngressParser(),
         Pipe1SwitchIngress(),
         Pipe1SwitchIngressDeparser(),
         Pipe1SwitchEgressParser(),
         Pipe1SwitchEgress(),
         Pipe1SwitchEgressDeparser()) nc_pipe_1;

Switch(nc_pipe_0, nc_pipe_1) main;