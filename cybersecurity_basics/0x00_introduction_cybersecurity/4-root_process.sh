#!/bin/bash
ps -u $1 -o user,pid,pcpu,pmem,vsz,rss,tty,stat,start,time,cmd | grep -v "^$1.*\s0\s*0\s"
