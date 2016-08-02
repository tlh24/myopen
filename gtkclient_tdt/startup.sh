#!/bin/bash

#./po8e

#af ipc:///tmp/broadband.zmq ipc:///tmp/af.zmq > /dev/null &
#af2 1464840 ipc:///tmp/broadband.zmq ipc:///tmp/af2.zmq > /dev/null &

subtr ipc:///tmp/broadband.zmq ipc:///tmp/events.zmq ipc:///tmp/subtr.zmq > /dev/null &

bp 300 5000 ipc:///tmp/broadband.zmq ipc:///tmp/bp.zmq > /dev/null &
#lfp hgamma ipc:///tmp/broadband.zmq ipc:///tmp/lfp.zmq > /dev/null &
#notch ipc:///tmp/bp.zmq ipc:///tmp/notch.zmq > /dev/null &
noop ipc:///tmp/bp.zmq ipc:///tmp/noop.zmq > /dev/null &
