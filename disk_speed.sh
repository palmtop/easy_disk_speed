#!/bin/bash

test_speed() {
    let percent=$start*100/size
    echo "Test at $percent% $start $size"
    dd if="$1" of=/dev/null bs=1M count=200 skip=$start
}

echo "Disk speed tester"

# Test at every 20% of the disk and at the very end
# In each test reads 200 MiB with dd

if [ $# -eq 0 ] || [ ! -r "$1" ]; then
    echo "First parameter should be a file"
    exit
fi 

if [ -b "$1" ]; then
    size=`blockdev --getsize64 "$1"`
else 
    size=`stat -c %s "$1"`
fi

let size=$size/1024/1024

echo "Disk size: $size MiB"
if [ "$size" -lt "1500" ]; then
    echo "File too small, minimum size is 1,5 Gigabyte"
    exit 
fi
for i in 0 1 2 3 4
do
    let start=$size/5*$i
    test_speed "$1"
done
let start=$size-210
test_speed "$1"
