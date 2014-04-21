#!/bin/bash -x

./echo_1000_5_digit_numbers.py > numbers;
cat numbers | ./gen_features_for_svmlin.py > training;
cat numbers | ./gen_labels_for_svmlin.py > labels;

../svmlin ./training ./labels;

