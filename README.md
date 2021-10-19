# DPS-Challenge-Assessment
DPS challenge task for AI Engineer

## `Preamble` :scroll:

Using Google’s managed ML platform [Vertex AI](https://codelabs.developers.google.com/codelabs/vertex-ai-custom-models#0) to build an end-to-end machine learning workflow.

## `Datasets` :globe_with_meridians:

<https://www.kaggle.com/uciml/autompg-dataset/code>

(_Task is to predict the fuel efficiency of a vehicle using a basic regression with TensorFlow._)

Folder Structure :open_file_folder:
============================

> Folder structure and naming conventions for this project

### A top-level directory layout

    .
    ├── mpg
          ├── trainer
          |          └── train                 # training pipeline (.py)
          └── Dockerfile                       
    ├── workspace                              # Intermediate files from Vertex platform
    ├── deploy-output.txt                      # log output from cloud shell                  
    ├── deploy.py                              # code for deployment
    ├── predict.py                             # code for prediction 
    ├── .gitignore
    ├── LICENSE
    └── README.md

## `Usage`

```python
python3 predict.py

```

## `Output`

![](https://github.com/ranjiGT/DPS-Challenge-Assessment/blob/main/img/prediction.jpg)
