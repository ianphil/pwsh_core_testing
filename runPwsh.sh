#!/usr/bin/env bash

# Title:         runPwsh.sh
# Description:   Creates and runs powershell cli container
# Author:        Ian Philpot
# Date:          2018-12-19
# Version:       0.1.0
# Example:       ./runPwsh.sh

MY_PATH="`dirname \"$0\"`"

docker build -t azpwsh "$MY_PATH"
docker run -it -v $(pwd):/src --rm --name azpwsh azpwsh