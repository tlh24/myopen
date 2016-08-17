#!/bin/bash

#af ipc:///tmp/broadband.zmq ipc:///tmp/af.zmq > /dev/null &

#af2 1464840 ipc:///tmp/broadband.zmq ipc:///tmp/af2.zmq &

#bp 300 5000 ipc:///tmp/subtr.zmq ipc:///tmp/bp.zmq &
#lfp hgamma ipc:///tmp/broadband.zmq ipc:///tmp/lfp.zmq &
#notch ipc:///tmp/bp.zmq ipc:///tmp/notch.zmq &
#noop ipc:///tmp/bp.zmq ipc:///tmp/noop.zmq &

bp 300 5000 tcp://localhost:2000 ipc:///tmp/bp.zmq &
subtr ipc:///tmp/bp.zmq tcp://localhost:3000 ipc:///tmp/subtr.zmq &
noop ipc:///tmp/subtr.zmq ipc:///tmp/noop.zmq &
