#!/bin/sh
set -eu

start_time=
end_time=
input_file=
output_file=

ffmpeg \
  -ss $start_time \
  -i $input_file \
  -vf scale=640:480 \
  -pix_fmt yuv420p \
  -t $(~/scripts/subtract-time.js $start_time $end_time) \
  -vcodec libx264 \
  -crf 28 \
  -profile:v baseline \
  -movflags +faststart \
  -preset slow \
  -tune film \
  -acodec libfdk_aac \
  -b:a 64k \
  $output_file
