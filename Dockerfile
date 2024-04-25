FROM scratch
ADD rootfs.tar.gz /
ENTRYPOINT ["/sbin/init"]