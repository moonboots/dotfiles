#!/bin/sh
usage() {
  echo "Usage"
  echo "  $(basename $0) regex color [regex color]*"
  echo "where color is 0-255"
  exit 1
}

num_args=$#
if [ $num_args -lt 2 ]; then
  echo "$(basename $0) requires at least two arguments"
  usage
fi

if [ $(($num_args % 2)) -ne 0 ]; then
  echo "$(basename $0) requires event number of arguments representing regex color pairs"
  usage
fi

sed_args=""
start_color_def="\\o033[38;05;"
end_color_def="m"
end="\\o033[0m"

while [ "$1" ]
do
  regex=$1
  color=$2
  sed_args="${sed_args} -e \"s/$regex/${start_color_def}${color}${end_color_def}&${end}/g\""
  shift 2
done

eval sed $sed_args
