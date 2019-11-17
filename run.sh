#! /bin/bash
sudo sar -o SAR_datafile 1 1500 >/dev/null 2>&1 &
sudo docker run -it -v my-vol:/data1 fio-test /data1
sleep 120
sudo docker run -it -v my-vol:/data2 fio-test /data2
sleep 120
sudo docker run -it -v my-vol:/data3 fio-test /data3
sleep 120
sudo docker run -it -v my-vol:/data4 fio-test /data4
sleep 120
sudo docker run -it -v my-vol:/data5 fio-test /data5
