
docker kill chroot-ssh
docker rm chroot-ssh

sudo docker run  --name chroot-ssh -p 2202:22   \
        -v  /home:/home \
        -v /usr/local/ssh-chroot/sshd_config:/etc/ssh/sshd_config \
        -v /usr/local/ssh-chroot/passwd:/etc/passwd:ro  \
        -v /usr/local/ssh-chroot/group:/etc/group:ro \
        -v /usr/local/ssh-chroot/shadow:/etc/shadow:ro \
        -v /dev/log:/dev/log \
   -d ezbik/centos6-ssh

