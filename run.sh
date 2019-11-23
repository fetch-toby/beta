#! /bin/bash
sudo sar -o SAR_datafile 1 1500 >/dev/null 2>&1 &
sudo docker run -d --mount type=bind,source='/yolo/vol-1',target=/data saye16/fio-load
sleep 120
sudo docker run -d --mount type=bind,source='/yolo/vol-2',target=/data saye16/fio-load
sleep 120
sudo docker run -d --mount type=bind,source='/yolo/vol-3',target=/data saye16/fio-load
sleep 120
sudo docker run -d --mount type=bind,source='/yolo/vol-4',target=/data saye16/fio-load
sleep 120
sudo docker run -d --mount type=bind,source='/yolo/vol-5',target=/data saye16/fio-load
