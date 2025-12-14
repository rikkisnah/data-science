# Data Science Portfolio

A consolidated repository of data science projects from PGP-AIML and MIT Applied Data Science programs.

## Repository Structure

```
data-science/
├── README.md
├── projects/
│   ├── pgp-aiml/           # PGP-AIML Program Projects
│   │   ├── ensemble_techniques/
│   │   ├── feature_selection_model_tunining/
│   │   ├── fundamentals_aiml/
│   │   ├── intro_natural_language/
│   │   ├── intro_neural_network/
│   │   ├── intro_to_compute_vision/
│   │   ├── intro_to_neural_networks/
│   │   ├── statistical_learning/
│   │   ├── supervised_learning_regression/
│   │   └── unsupervised_learning/
│   └── mit/                # MIT Applied Data Science Projects
│       └── foodhub/
└── shared/
    ├── datasets/
    ├── utils/
    └── templates/
```

## Project Categories

### PGP-AIML Projects

| Project | Description |
|---------|-------------|
| fundamentals_aiml | Python fundamentals, NumPy, Pandas, EDA |
| statistical_learning | Descriptive statistics, hypothesis testing |
| supervised_learning_regression | Linear/Logistic regression, Decision Trees |
| feature_selection_model_tunining | Feature selection, Grid/Random Search CV |
| ensemble_techniques | Bagging, Random Forest, Gradient Boosting |
| unsupervised_learning | Clustering, K-Means, PCA |
| intro_natural_language | NLP fundamentals, text processing |
| intro_to_neural_networks | ANN, TensorFlow, Keras |
| intro_neural_network | Neural network projects |
| intro_to_compute_vision | Computer vision projects |

### MIT Applied Data Science Projects

| Project | Description |
|---------|-------------|
| foodhub | EDA project analyzing food delivery data |

## Project Structure Convention

Each project follows the canonical structure:

```
<project_name>/
├── README.md           # Project documentation
├── notebooks/          # Jupyter notebooks (source of truth)
├── data/
│   ├── raw/           # Original datasets
│   └── processed/     # Cleaned/transformed data
├── src/               # Python scripts
├── reports/           # PDFs, docs, presentations
└── outputs/           # Generated artifacts (HTML, models)
```

## Execution Environment

- **Primary:** Jupyter Notebooks
- **Requirement:** Notebooks must run top-to-bottom (Restart Kernel → Run All)
- **Paths:** All data references use relative paths (`../data/raw/`)

## Getting Started

1. Navigate to a project directory
2. Read the project README.md
3. Open notebooks in `notebooks/` directory
4. Ensure datasets are in `data/raw/`
5. Run notebooks sequentially

## Technologies

- Python 3.x
- NumPy, Pandas
- Matplotlib, Seaborn
- Scikit-learn
- TensorFlow, Keras
- NLTK, SpaCy
