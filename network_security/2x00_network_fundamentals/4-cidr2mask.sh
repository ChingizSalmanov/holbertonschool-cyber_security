#!/bin/bash
python3 -c "import socket,struct; print(socket.inet_ntoa(struct.pack('>I', (0xffffffff << (32-$1)) & 0xffffffff)))"
