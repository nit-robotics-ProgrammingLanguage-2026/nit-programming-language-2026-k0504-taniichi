#!/bin/bash

# -5から20までの整数を比較する
for input in $(seq -5 20)
do
    original=$(echo "$input" | ./original)
    rewritten=$(echo "$input" | ./main)

    if [ "$original" = "$rewritten" ]; then
        echo "OK: 入力 $input -> $original"
    else
        echo "NG: 入力 $input -> original=$original, main=$rewritten"
    fi
done

# 範囲外の入力も比較する
for input in -100 21 100 1000
do
    original=$(echo "$input" | ./original)
    rewritten=$(echo "$input" | ./main)

    if [ "$original" = "$rewritten" ]; then
        echo "OK: 範囲外の入力 $input -> $original"
    else
        echo "NG: 範囲外の入力 $input -> original=$original, main=$rewritten"
    fi
done
