PROJECT = simple-lamda-proxy

PYTHON = python3.7
VAR_DIR = $(CURDIR)/zip
VIRTUAL_ENV = $(CURDIR)/venv
PYTHON_BIN = $(VIRTUAL_ENV)/bin
DEPLOY_DIR = $(VAR_DIR)/deploy

cleanall:
	rm -Rf $(VAR_DIR)
	rm -Rf ${DEPLOY_DIR}

install:
	mkdir -p $(VIRTUAL_ENV)
	virtualenv --no-site-packages $(VIRTUAL_ENV)
	$(PYTHON_BIN)/pip install -r requirements.txt

build:
	mkdir -p $(VAR_DIR)/deploy
	cp -Rf $(VIRTUAL_ENV)/lib/${PYTHON}/site-packages/* $(DEPLOY_DIR)
	cp $(CURDIR)/main.py $(DEPLOY_DIR)/
	find $(DEPLOY_DIR) -name "*.pyc" -delete;
	cd $(DEPLOY_DIR) && zip -r9 $(VAR_DIR)/${PROJECT}.zip *

