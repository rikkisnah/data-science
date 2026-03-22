# Real-Time Retail Feedback Intelligence - Makefile
#
# Targets for installing dependencies and running the Jupyter notebook.

VENV         := ~/.venvs/rikkisnah
PYTHON       := $(VENV)/bin/python
PIP          := $(VENV)/bin/pip
JUPYTER      := $(VENV)/bin/jupyter
NOTEBOOK     := notebooks/Real-Time_Retail_Feedback_Intelligence_Full_code.ipynb
HTML_OUTPUT  := outputs/Real-Time_Retail_Feedback_Intelligence_Full_code.html
PDF_OUTPUT   := outputs/Real-Time_Retail_Feedback_Intelligence_Full_code.pdf

.PHONY: help install jupyter lab classic run export-html export-pdf clean

help: ## Show available targets
	@echo "Real-Time Retail Feedback Intelligence"
	@echo ""
	@echo "Targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "  %-18s %s\n", $$1, $$2}'

install: ## Install Jupyter and project dependencies into venv
	@echo "Ensuring virtual environment exists at $(VENV)..."
	@test -d $(VENV) || python3 -m venv $(VENV)
	@echo "Installing/upgrading dependencies..."
	$(PIP) install --upgrade pip
	$(PIP) install jupyter notebook jupyterlab nbconvert ipykernel \
		numpy pandas matplotlib seaborn scikit-learn \
		wordcloud plotly openai
	$(PYTHON) -m ipykernel install --user --name rikkisnah --display-name "Python (rikkisnah)"
	@echo ""
	@echo "Done. Run 'make jupyter', 'make lab', or 'make classic' to launch."

install-uv: ## Install dependencies using uv (preferred)
	uv pip install --python $(PYTHON) \
		jupyter notebook jupyterlab nbconvert ipykernel \
		numpy pandas matplotlib seaborn scikit-learn \
		wordcloud plotly openai

jupyter: ## Launch Jupyter Notebook (opens browser)
	$(JUPYTER) notebook $(NOTEBOOK)

lab: ## Launch JupyterLab (modern UI)
	$(JUPYTER) lab $(NOTEBOOK)

classic: ## Launch classic Jupyter Notebook UI (nbclassic)
	$(JUPYTER) nbclassic $(NOTEBOOK)

run: jupyter ## Alias for jupyter (Notebook UI)

export-html: ## Export notebook to HTML (for submission)
	$(JUPYTER) nbconvert --to html --output-dir=outputs \
		--output=Real-Time_Retail_Feedback_Intelligence_Full_code.html $(NOTEBOOK)
	@echo "Exported to $(HTML_OUTPUT)"

export-pdf: ## Export notebook to PDF
	$(JUPYTER) nbconvert --to pdf --output-dir=outputs \
		--output=Real-Time_Retail_Feedback_Intelligence_Full_code.pdf $(NOTEBOOK)
	@echo "Exported to $(PDF_OUTPUT)"

clean: ## Remove generated outputs
	rm -f $(HTML_OUTPUT) $(PDF_OUTPUT)
	rm -rf notebooks/.ipynb_checkpoints
