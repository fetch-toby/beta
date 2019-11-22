#! /bin/bash
sudo sar -o SAR_datafile 1 1500 >/dev/null 2>&1 &
sudo docker run -v my-vol1:/data fio-test
sleep 120
sudo docker run -v my-vol2:/data fio-test
sleep 120
sudo docker run -v my-vol3:/data fio-test
sleep 120
sudo docker run -v my-vol4:/data fio-test
sleep 120
sudo docker run -v my-vol5:/data fio-test
