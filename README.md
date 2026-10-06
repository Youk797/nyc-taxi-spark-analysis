# Analyse Big Data — NYC Yellow Taxi avec Apache Spark

Projet universitaire de Big Data réalisé avec Apache Spark / PySpark sur les trajets des taxis jaunes de New York.

Auteurs : Roland Chen & Youssef El Kadiri

## Ce que contient le projet

- ingestion et nettoyage de fichiers CSV avec Spark ;
- conversion et exploitation de données au format Parquet ;
- agrégations et analyse de plans d'exécution Spark ;
- analyses temporelles et géographiques ;
- visualisations avec Plotly / GeoPandas.

Le notebook `nyc_taxi_analysis.ipynb` contient l'ensemble de l'analyse, du code et des résultats.

## Dataset

Le dataset complet n'est pas inclus dans le dépôt en raison de sa taille. Il provient de **NYC Yellow Taxi Trip Data** :

- NYC TLC : https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page
- miroir Kaggle utilisé pour le projet : https://www.kaggle.com/datasets/elemento/nyc-yellow-taxi-trip-data

Placer les fichiers CSV dans un dossier `data/` à la racine du projet avant d'exécuter le notebook.

## Lancer le notebook

```bash
python -m venv .venv
python -m pip install -r requirements.txt
jupyter notebook nyc_taxi_analysis.ipynb
```

Apache Spark nécessite également une installation Java fonctionnelle.

## Technologies

`Python` · `PySpark` · `Apache Spark` · `Parquet` · `Pandas` · `GeoPandas` · `Plotly`
