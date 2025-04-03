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

You can use any of the tools shown in the course (Data Studio or Metabase) or any other BI tool of your choice to build a dashboard. If you do use another tool, please specify and make sure that the dashboard is somehow accessible to your peers. 

Your dashboard should contain at least two tiles, we suggest you include:

- 1 graph that shows the distribution of some categorical data 
- 1 graph that shows the distribution of the data across a temporal line

Ensure that your graph is easy to understand by adding references and titles.
 



