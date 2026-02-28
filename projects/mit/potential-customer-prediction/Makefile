# Potential Customers Prediction - Makefile
#
# Targets for installing dependencies and running the Jupyter notebook.

VENV         := ~/.venvs/rikkisnah
PYTHON       := $(VENV)/bin/python
PIP          := $(VENV)/bin/pip
JUPYTER      := $(VENV)/bin/jupyter
NOTEBOOK     := notebooks/potential-customers-prediction.ipynb
HTML_OUTPUT  := outputs/potential-customers-prediction.html

.PHONY: help install jupyter run export-html clean

help: ## Show available targets
	@echo "Potential Customers Prediction"
	@echo ""
	@echo "Targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "  %-18s %s\n", $$1, $$2}'

install: ## Install Jupyter and project dependencies into venv
	@echo "Ensuring virtual environment exists at $(VENV)..."
	@test -d $(VENV) || python3 -m venv $(VENV)
	@echo "Installing/upgrading dependencies..."
	$(PIP) install --upgrade pip
	$(PIP) install jupyter notebook ipykernel \
		numpy pandas matplotlib seaborn scikit-learn
	$(PYTHON) -m ipykernel install --user --name rikkisnah --display-name "Python (rikkisnah)"
	@echo ""
	@echo "Done. Run 'make jupyter' to launch the notebook."

jupyter: ## Launch Jupyter Notebook (opens browser)
	$(JUPYTER) notebook $(NOTEBOOK)

run: jupyter ## Alias for jupyter

export-html: ## Export notebook to HTML (for submission)
	$(JUPYTER) nbconvert --to html --output-dir=outputs \
		--output=potential-customers-prediction.html $(NOTEBOOK)
	@echo "Exported to $(HTML_OUTPUT)"

clean: ## Remove generated outputs
	rm -f $(HTML_OUTPUT)
	rm -rf notebooks/.ipynb_checkpoints
