all: init test doc

init:
	pip install -r requirements.txt
test:
	py.test --cov=mavlogger tests
doc:
	$(MAKE) -C docs html

.PHONY: all init test doc
