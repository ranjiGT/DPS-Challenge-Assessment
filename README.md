# `DPS-Challenge-Assessment`

## `Preamble`

This is a challenge using Google’s managed ML platform [Vertex AI](https://codelabs.developers.google.com/codelabs/vertex-ai-custom-models#0) to build an end-to-end machine learning workflow.

## `Task`

 To predict the fuel efficiency of a vehicle using a basic regression with TensorFlow.

## `Datasets`

<https://www.kaggle.com/uciml/autompg-dataset>

Folder Structure :open_file_folder:
============================

> Folder structure and naming conventions for this project

### A top-level directory layout

    .
    └── mpg
          ├── trainer
          |          └── train.py               # training pipeline (.py)
          └── Dockerfile                        
    ├── workspace                               # intermediate files                                
    ├── deploy-output.txt                       # Cloud shell logs
    ├── deploy.py                               # code for deployment             
    ├── predict.py                              # code for prediction             
    ├── .gitignore
    ├── LICENSE
    └── README.md
