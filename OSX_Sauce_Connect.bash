#!/bin/bash

ulimit -n 8000

/Users/phillipramirez/sauce-connect/4.5.3/bin/sc \
    --user $SAUCE_USERNAME \
    --api-key $SAUCE_ACCESS_KEY \
    --no-remove-colliding-tunnels \
    --tunnel-identifier="Phill Tunnel One" \
    --se-port 0 \
    --pidfile /Users/phillipramirez/sauce-connect/pid/tunnel1.pid \
    --logfile /Users/phillipramirez/sauce-connect/logs/tunnel1.log &

/Users/phillipramirez/sauce-connect/4.5.3/bin/sc \
    --user $SAUCE_USERNAME \
    --api-key $SAUCE_ACCESS_KEY \
    --no-remove-colliding-tunnels \
    --tunnel-identifier="Phill Tunnel Two" \
    --se-port 0 \
    --pidfile /Users/phillipramirez/sauce-connect/pid/tunnel2.pid \
    --logfile /Users/phillipramirez/sauce-connect/logs/tunnel2.log &

/Users/phillipramirez/sauce-connect/4.5.3/bin/sc \
    --user $SAUCE_USERNAME \
    --api-key $SAUCE_ACCESS_KEY \
    --no-remove-colliding-tunnels \
    --tunnel-identifier="Phill Tunnel Three" \
    --se-port 0 \
    --pidfile /Users/phillipramirez/sauce-connect/pid/tunnel3.pid \
    --logfile /Users/phillipramirez/sauce-connect/logs/tunnel3.log &

/Users/phillipramirez/sauce-connect/4.5.2/bin/sc \
    --user $SAUCE_USERNAME \
    --api-key $SAUCE_ACCESS_KEY \
    --no-remove-colliding-tunnels \
    --tunnel-identifier="Phill Tunnel Four" \
    --se-port 0 \
    --pidfile /Users/phillipramirez/sauce-connect/pid/tunnel4.pid \
    --logfile /Users/phillipramirez/sauce-connect/logs/tunnel4.log &

/Users/phillipramirez/sauce-connect/4.5.2/bin/sc \
    --user $SAUCE_USERNAME \
    --api-key $SAUCE_ACCESS_KEY \
    --no-remove-colliding-tunnels \
    --tunnel-identifier="Phill Tunnel Five" \
    --se-port 0 \
    --pidfile /Users/phillipramirez/sauce-connect/pid/tunnel5.pid \
    --logfile /Users/phillipramirez/sauce-connect/logs/tunnel5.log &

wait
