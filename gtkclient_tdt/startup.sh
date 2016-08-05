#!/bin/bash

#af ipc:///tmp/broadband.zmq ipc:///tmp/af.zmq > /dev/null &

af2 1464840 ipc:///tmp/broadband.zmq ipc:///tmp/af2.zmq &
subtr ipc:///tmp/af2.zmq ipc:///tmp/events.zmq ipc:///tmp/subtr.zmq &

bp 300 5000 ipc:///tmp/subtr.zmq ipc:///tmp/bp.zmq &
#lfp hgamma ipc:///tmp/broadband.zmq ipc:///tmp/lfp.zmq &
#notch ipc:///tmp/bp.zmq ipc:///tmp/notch.zmq &
noop ipc:///tmp/bp.zmq ipc:///tmp/noop.zmq &
