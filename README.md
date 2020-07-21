# disktests
Reference update and Linux reimplementation of Dennis Publishing disk I/O performance tests

Note that this repo exists to track code changes and does not include sample file sets require
A full version of the desk test kit, including the media and data files required for testing, may be found at https://www.theos-cloud.eu/index.php/s/6YapNo5a6yKkw4y

To create a 1GB file for use in the large file transfer test:
fallocate -l 1G large.img

Testing procotol:

1. Format review disk ext4
2. Mount review disk at /mnt/testdisk - for example: sudo mount /dev/nvme0n1 /mnt/testdisk
3. Create and mount a 4GB ramdisk: sudo mount -t tmpfs -o size=4g tmpfs /mnt/ramdisk
4. Copy all disktests to the ramdisk's root
5. cd to the ramdisk: cd /mnt/ramdisk/disktests
6. Run the test file ./storagetest
7. Copy the times from results.txt into test spreadsheet and divide by three for average transfer speed in seconds
