#!/bin/sed -rf

s/\b[A-Z��������������������������������]+\b/\x1b[32;1m\L\u&\x1b[0m/g
