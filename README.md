## National Gallery of Arts Analytics 

Note: This project was developed as the final step for the completion of the Data Engineering Zoomcamp offered by DataTalksClub.

### Overview 

The goal of this project is to build an end-to-end batch data pipeline to perform ELT (Extract Load Transform) on data records relating to the 130,000+ artworks in the collection from the National Gallery of Art. 

### Problem statement

This is an exploratory exercise to understand more about the artworks curated by the National Gallery of Art. The [National Gallery of Art Open Data Program](https://github.com/NationalGalleryOfArt/opendata) publishes the dataset regarding the artworks and their attributes in the collection.The dataset is published in multiple CSV files and uses UTF-8 encoding. The collection management is in constant motion and therefore the dataset released through this open data program may not be entirely complete, correct, or up to date. This dataset is provided “as is”, is updated frequently (usually once a day), and should be used at your own risk.

### Objective

Data will be extracted from the source, and an end-to-end data pipeline will be constructed, which includes using cloud resources and workflow orchestration tool to ingest and store the data, creating a data warehouse for data processing and transformation, and building an interactive dashboard for visualzation.

## Data Pipeline 

### Technologies 

Cloud: GCP

Infrastructure as code (IaC): Terraform

Workflow orchestration: Kestra

Data Warehouse: BigQuery

Data Transformation: dbt-cloud

Dashboard: Looker Studio

### Architecture 

### ELT Process 

### Dashboard

Looker Studio: https://lookerstudio.google.com/reporting/a97044e0-e790-4711-b2da-4d8a70a43b0a 

<img width="1050" alt="image" src="https://github.com/user-attachments/assets/e0c5ba40-fa87-47b8-b04b-0644929ab18f" />
 



