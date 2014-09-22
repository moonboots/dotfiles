#!/bin/sh
set -eu
input_file=$1
output_file=$2

# first pass
#mencoder $input_file \
#  -oac lavc \
#  -ovc x264 \
#  -o $output_file

# # http://www.mplayerhq.hu/DOCS/HTML/en/menc-feat-quicktime-7.html
# # first pass
# mencoder $input_file \
#   -oac mp3lame \
#   -ovc x264 \
#   -x264encopts pass=1:bitrate=900:bframes=1:me=umh:partitions=all:trellis=1:qp_step=4:qcomp=0.7:direct_pred=auto:keyint=300:threads=4 \
#   -vf scale=-10:-1,harddup \
#   -o /dev/null
# 
# # second pass
# mencoder $input_file \
#   -oac mp3lame \
#   -ovc x264 \
#   -x264encopts pass=2:bitrate=900:bframes=1:me=umh:partitions=all:trellis=1:qp_step=4:qcomp=0.7:direct_pred=auto:keyint=300:threads=4 \
#   -vf scale=-10:-1,harddup \
#   -o $output_file

threads=4
v_bitrate="1000k"
a_bitrate="256k"
ffmpeg -i $input_file -an -vcodec libx264 -pass 1 -preset veryslow -threads $threads -b $v_bitrate -f rawvideo -y /dev/null 
ffmpeg -i $input_file -acodec aac -ab $a_bitrate -ar 96000 -vcodec libx264 -pass 2 -preset veryslow -threads $threads -b $v_bitrate -filter:v yadif -strict -2 $output_file
