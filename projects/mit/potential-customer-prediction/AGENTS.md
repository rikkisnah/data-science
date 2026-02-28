# Repository Guidelines

## Project Structure & Module Organization
The project centers on the notebook [notebooks/potential-customers-prediction.ipynb](/mnt/data/src/rikkisnah/data-science/projects/mit/potential-customer-prediction/notebooks/potential-customers-prediction.ipynb). Keep reusable logic in `src/` (currently minimal) and reserve notebooks for analysis flow and visuals.  
Use `data/raw/` for immutable inputs (for example, `datasets.csv`) and `data/processed/` for derived datasets.  
Write generated outputs to `outputs/` and final packaged deliverables to `final_submission/artifacts/`.  
Use `reports/` for narrative/project documentation.

## Build, Test, and Development Commands
- `make help`: list all available targets.
- `make install`: create/use `~/.venvs/rikkisnah`, install dependencies, and register the Jupyter kernel.
- `make jupyter`: open the main notebook locally.
- `make export-html`: export notebook HTML to `outputs/potential-customers-prediction.html`.
- `make clean`: remove generated HTML and notebook checkpoint files.

## Coding Style & Naming Conventions
Use Python 3 with 4-space indentation and PEP 8 conventions.  
Use `snake_case` for variables, functions, and file names; use `PascalCase` for classes.  
Set `random_state` for train/test splits and models to keep results reproducible.  
Keep data paths relative and stable (example from notebooks: `../data/raw/datasets.csv`).

## Testing Guidelines
There is no formal automated suite yet. When adding reusable code, create `tests/` and use `pytest` with files named `test_<module>.py`.  
Before submitting changes, run the notebook from a clean kernel and confirm:
- all cells execute without errors,
- key metrics (accuracy/precision/recall/F1/ROC-AUC) are reported,
- `make export-html` succeeds.

## Commit & Pull Request Guidelines
Current history favors short, imperative commit messages. Prefer clear prefixes such as `feat:`, `fix:`, `docs:`, `chore:` (example: `feat: tune random forest grid search`).  
Keep commits focused and avoid mixing notebook, data, and report refactors unless necessary.  
PRs should include: purpose, changed paths, metric impact, and generated artifacts updated.
