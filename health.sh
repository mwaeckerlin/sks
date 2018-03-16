#!/bin/bash

echo quit | telnet localhost 11371 2> /dev/null | grep -q Connected
