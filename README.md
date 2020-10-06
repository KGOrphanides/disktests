# disktests
Reference update and Linux reimplementation of Dennis Publishing disk I/O performance tests

Note that this repo exists to track code changes and does not include the sample file sets.
A full version of the desk test kit, including the media and data files required for testing, may be found at https://www.theos-cloud.eu/index.php/s/6YapNo5a6yKkw4y

To create a 1GB file for use in the large file transfer test:
fallocate -l 1G large.img

## OG testing procotol:

* Format review disk ext4
* Create mountpoints: sudo mkdir {/mnt/ramdisk/, r /mnt/testdisk/}
* Mount review disk at /mnt/testdisk - for example: sudo mount /dev/nvme0n1 /mnt/testdisk
* Create and mount a 4GB ramdisk: sudo mount -t tmpfs -o size=4g tmpfs /mnt/ramdisk
* Copy all disktests to the ramdisk's root
* cd to the ramdisk: cd /mnt/ramdisk
* Run the test file ./storagetest
* Copy the times from results.txt into the Test Results sheet of hard_disk_test_results.ods to calculate read/write speeds in MB/s 

## Phoronix benchmark selection

Install to testdisk and run:
* Aio-stress
* Postmark
* Dbench 12 clients

## Testing SSD performance while full

After dumping your results, entirely fill the test disk with data.
Reformat -- NOT a low level format -- and re-run tests.
