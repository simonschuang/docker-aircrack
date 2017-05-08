#!/bin/bash
function shut_down() {
    echo shutting down
    exit
}
trap "shut_down" SIGKILL SIGTERM SIGHUP SIGINT EXIT

sleep infinity
