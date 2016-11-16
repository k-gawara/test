#!/usr/local/bin/python3

print("start")

f = open('sar01')
lines = f.readlines()
f.close()

for line in lines:
       print(line.rstrip("\n"))

print("end")

