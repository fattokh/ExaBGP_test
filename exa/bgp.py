#!/usr/bin/env python3

import sys
import time
import struct
import socket

messages = []
messages.append('announce route 10.1.0.0/30 next-hop self as-path')
messages.append('announce route 10.2.0.0/30 next-hop self as-path')
messages.append('announce route 10.3.0.0/30 next-hop self as-path')

for message in messages:
    sys.stdout.write(message + '\n')
    sys.stdout.flush()

while True:
    time.sleep(1)
