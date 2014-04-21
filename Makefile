algorithm = 1

.PHONY: training testing clean

all: clean training testing

training:
	./echo_n_5_digit_numbers.py 1000000 > numbers
	cat numbers | ./gen_features_for_svmlin.py > training
	cat numbers | ./gen_labels_for_svmlin.py > labels
	../svmlin -A $(algorithm) ./training ./labels

testing:
	../svmlin -A $(algorithm) -f ./training.weights ./test_examples

clean:
	rm -rf ./*.outputs ./*.weights ./numbers ./training ./labels

#evaluation:
	#../svmlin -f ./training.weights  
