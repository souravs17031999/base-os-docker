.PHONY: test publish

build:
	@echo "MAKE build ==========================================="
	build-scripts/docker-flow.sh  

publish:
	@echo "MAKE publish ==========================================="
	build-scripts/publish.sh 

notify:
	@echo "MAKE notify ==========================================="
	# python3 build-scripts/publish.py

clean:
	@echo "MAKE clean ===========================================" 
	# build-scripts/clean-dockers.sh