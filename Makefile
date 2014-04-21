.PHONY: training testing clean

all: clean training testing

training:
	./echo_1000_5_digit_numbers.py > numbers
	cat numbers | ./gen_features_for_svmlin.py > training
	cat numbers | ./gen_labels_for_svmlin.py > labels
	../svmlin ./training ./labels

testing:
	../svmlin ./training.outputs ./test_examples

clean:
	rm -rf ./*.outputs ./*.weights ./numbers ./training ./labels
