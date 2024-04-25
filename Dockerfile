FROM scratch
ADD openwrt-armvirt-64-default-rootfs.tar.gz /
ENTRYPOINT ["/sbin/init"]