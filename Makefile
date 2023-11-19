install: ## all installatio will lie here
	pip install --upgrade pip &&\
	pip install -r requirements.txt

test: #testing scripts will lie here, it checks the logic of the code.
	python -m pytest -vv test_hello.py

format: # formatting code will lie here
	black *.py
# * means any file_name
lint: #lint checks the syntax
	pylint --disable=R,C *.py

all: install lint test