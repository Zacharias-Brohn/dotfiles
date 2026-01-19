#!/bin/bash

cd /home/zach/GitProjects/pylaunch

exec /home/zach/GitProjects/pylaunch/venv/bin/python main.py >> /home/zach/GitProjects/pylaunch/pylaunch.log 2>&1
