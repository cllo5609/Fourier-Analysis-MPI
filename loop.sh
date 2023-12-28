#!/bin/bash

for s in 1024 4096 16384 65536 262144 1048576 2097152
do
        for b in 1 2 4 8
        do
                g++ -DNUMELEMENTS=$s -DNUMCPUS=$b -o fourier fourier.cpp /usr/local/apps/mp/mp-10.1/lib64/libOpenCL.so.1.1 -lm -fopenmp
                ./fourier
        done
done