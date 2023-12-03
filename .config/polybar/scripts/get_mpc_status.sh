#!/bin/env sh
mpc | awk 'FNR==2 {printf"%s", $1}'
