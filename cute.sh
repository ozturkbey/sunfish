#!/bin/sh
~/repos/cutechess/build/cutechess-cli \
   -engine conf=sunfish \
   -engine conf=sunfish-2 \
   -engine conf=sunfish-2 option.FUTILITY=1 \
   -each tc=3:0+1 \
   -concurrency 8 \
   -pgnout out.pgn \
   -openings file=tools/test_files/gaviota-starters.pgn \
   -ratinginterval 10 \
   -rounds 40 \
   $1