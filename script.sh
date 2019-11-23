#!/bin/bash

export FIO_JOB_FILE=${FIO_JOB_FILE:-/config/job.fio}
export JOB_NAME=${JOB_NAME:-fio}
export NJ=${NJ:-3}
export IOD=${IOD:-16}
export BLOCK_SIZE=${BLOCK_SIZE:-4k}
export F_NAME=${F_NAME:-/data/myfio}
export DIRECT=${DIRECT:-1}
export FSYNC=${FSYNC:-1}
export SIZE=${SIZE:-256M}
export RW=${RW:-randread}
export RUN_TIME=${RUN_TIME:-900}
export RP=${RP:-90}
export WP=${WP:-10}


exec /usr/bin/fio $FIO_JOB_FILE --output /data/${JOB_NAME}.out
