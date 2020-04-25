#/bin/bash

printf smallwrite >> results.txt;
(time /mnt/ramdisk/smallwrite.sh) &>> results.txt;
printf "\nmediumwrite" >> results.txt;
(time /mnt/ramdisk/mediumwrite.sh) &>> results.txt;
printf "\nlargewrite" >> results.txt;
(time /mnt/ramdisk/largewrite.sh) &>> results.txt;
printf "\nsmallread" >> results.txt;
(time /mnt/ramdisk/smallread.sh) &>> results.txt;
printf "\nmediumread" >> results.txt;
(time /mnt/ramdisk/mediumread.sh) &>> results.txt;
printf "\nlargeread" >> results.txt;
(time /mnt/ramdisk/largeread.sh) &>> results.txt;

