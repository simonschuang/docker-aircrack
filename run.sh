#!/bin/bash
function shut_down() {
    echo shutting down
    exit
}
trap "shut_down" SIGKILL SIGTERM SIGHUP SIGINT EXIT

cp -rf /aircrack-ng-1.2-rc4/ /work

cd /work/aircrack-ng-1.2-rc4 && make && make install

sleep infinity
