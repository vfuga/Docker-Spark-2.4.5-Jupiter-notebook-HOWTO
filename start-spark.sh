sudo mkdir /mnt/docker
sudo chown dlab-user:dlab-user /mnt/docker

sudo docker run \
            -ti \
            --rm  \
            -v /home/dlab-user/DEVELOPMENT:/home/dlab-user/DEVELOPMENT \
            -v /opt/jars:/opt/jars \
            -v /mnt/docker:/mnt \
            -p 28888:8888 \
            -p 24040:4040 \
            --name=TEST \
            --hostname=dshost \
            --user=dlab-user \
            --workdir=/home/dlab-user dswatson-pyspark:v1 \

#bash
