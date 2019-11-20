#! /bin/bash
sudo sar -o SAR_datafile 1 1500 >/dev/null 2>&1 &
sudo docker run -it -v my-vol/data1:/data fio-test
sleep 120
sudo docker run -it -v my-vol/data2:/data fio-test
sleep 120
sudo docker run -it -v my-vol/data3:/data fio-test
sleep 120
sudo docker run -it -v my-vol/data4:/data fio-test
sleep 120
sudo docker run -it -v my-vol/data5:/data fio-test
