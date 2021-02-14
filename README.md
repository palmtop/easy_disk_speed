# Easy disk speed
En easy bash script to measure the read speed of a HDD in 6 different locations

As HDD-s tend to be much faster in the begining that in the end, this simple utility measures the speed at every 20% of the disk.

It uses standard linux tools, so you can run it on a lot of machines, e.g. on your NAS.

I used it to measure the speed of the NAS individual disks and the speed of the created RAID arrays.

In my NAS, the 8T Seagete HDDs produced ~ 190 MB/sec in the begining and ~ 90 MB/sec on the end.

With 4 disk RAID 5 on the first half of the drives they produced: 260-280 MB/sec

With 3 disk RAID 5 on the second half of the disks they produced: 180-250 MB/sec

In one of my desktop comuters, I have an 8T and four 2T disks, having an 5 disk RAID5 with the 2T disks and the first 2T of the 8T disk.

The speed of the 8T is similar to the NAS, while the 2T disks are much slower, ~ 120 MB/sec in the begining and ~60-70 at the end.

The 5 disk array still performs 240-260 MB/sec.
