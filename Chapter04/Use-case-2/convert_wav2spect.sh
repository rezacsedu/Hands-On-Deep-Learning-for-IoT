#!/bin/bash

#for file in test/*/*.wav
for file in dataset2/*/*.flac
do
    outfile=${file%.*}
	#sox "$file" ${outfile}.l.wav remix 1
	#sox "$file" ${outfile}.r.wav remix 2
  #  sox -m ${outfile}.l.wav ${outfile}.r.wav "$file"
	sox "$file" -n spectrogram -r -o ${outfile}.png
done
