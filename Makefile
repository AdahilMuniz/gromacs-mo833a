REP_NAME=experiment
TAG=v1.0


help:
	@echo "Help Menu"
	@echo "build_image    ------ Build a docker image "
	@echo "run_experiment ------ Run the experiment   "

build_image:
	docker build -t $(REP_NAME):$(TAG) -f ./experiments/ativ-3-exp-1/scripts/Dockerfile .

run_experiment:
	docker run -it $(REP_NAME):$(TAG)