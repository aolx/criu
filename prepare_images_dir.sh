#!/usr/bin/env bash
image_dir=$(realpath $1)
work_dir=$(realpath $2)
vmtouch $image_dir
vmtouch -ve $image_dir
nohup criu lazy-pages --images-dir $image_dir --work-dir $work_dir &
sleep 5 # make sure the daemon is running
