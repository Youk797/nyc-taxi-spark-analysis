PYTHON ?= python3
VENV := .venv
PIP := $(VENV)/bin/pip
JUPYTER := $(VENV)/bin/jupyter
NOTEBOOK := nyc_taxi_analysis.ipynb
HTML_OUT := nyc_taxi_analysis.html

all: run

$(VENV):
	$(PYTHON) -m venv $(VENV)

install: $(VENV)
	$(PIP) install --upgrade pip
	$(PIP) install -r requirements.txt

run: install
	$(JUPYTER) notebook $(NOTEBOOK)

export: install
	$(JUPYTER) nbconvert --execute --to html $(NOTEBOOK) --output $(HTML_OUT)

clean:
	rm -rf $(VENV) $(HTML_OUT) __pycache__ .ipynb_checkpoints taxi_parquet

.PHONY: all install run export clean
