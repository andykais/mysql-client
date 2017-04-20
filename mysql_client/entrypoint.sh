#!/bin/sh

wait-for-it.sh mysql:3306

CMD="$@"

. /root/.bashrc
/bin/bash -c "$CMD"
