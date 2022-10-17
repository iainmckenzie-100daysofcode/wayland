#!/bin/bash
printf "Recording in "
for n in {0..4}; do
	printf "$((5 - $n)) "
	sleep 1
done

wf-recorder -g "$(slurp)" -c libx264rgb --file=$(date "+%s").mp4
