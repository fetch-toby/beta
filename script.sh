#!/bin/bash

export FIO_JOB_FILE=${FIO_JOB_FILE:-/config/job.fio}
export JOB_NAME=${JOB_NAME:-fio}
export NJ=${NJ:-4}
export IOD=${IOD:-16}
export BLOCK_SIZE=${BLOCK_SIZE:-32k}
export F_NAME=${F_NAME:-/data/myfio}
export DIRECT=${DIRECT:-1}
export FSYNC=${FSYNC:-1}
export SIZE=${SIZE:-1G}
export RW=${RW:-randread}
export RUN_TIME=${RUN_TIME:-900}
export RP=${RP:-25}
export WP=${WP:-75}


exec /usr/bin/fio $FIO_JOB_FILE --output /data/${JOB_NAME}.out
