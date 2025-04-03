## National Gallery of Arts Analytics 

Note: This project was developed as the final step for the completion of the Data Engineering Zoomcamp offered by DataTalksClub.

### Overview 

The goal of this project is to build an end-to-end data pipeline to perform ELT (Extract Load Transform) on data records relating to the 130,000+ artworks in the collection from the National Gallery of Art. 

### Problem statement

This is an exploratory exercise to understand more about the artworks curated by the National Gallery of Art. The [National Gallery of Art Open Data Program](https://github.com/NationalGalleryOfArt/opendata) publishes the dataset regarding the artworks and their attributes in the collection.The dataset is published in multiple CSV files and uses UTF-8 encoding. The collection management is in constant motion and therefore the dataset released through this open data program may not be entirely complete, correct, or up to date. This dataset is provided “as is”, is updated frequently (usually once a day), and should be used at your own risk.

### Objective

Data will be extracted from the source, and an end-to-end data pipeline will be constructed, which includes using cloud resources and workflow orchestration tool to ingest and store the data, creating a data warehouse for data processing and transformation, and building an interactive dashboard for visualization.

## Data Pipeline 

### Technologies 

Cloud: GCP

Infrastructure as code (IaC): Terraform

Workflow orchestration: Kestra

Data Warehouse: BigQuery

Data Transformation: dbt-cloud

Dashboard: Looker Studio

### Architecture 

<img width="1246" alt="image" src="https://github.com/user-attachments/assets/953af332-4c8b-404b-aa40-c1aea9ce84be" />


### ELT Process 

#### Initial setup: 

Clone this repo to your local machine with one of the following commands:

With HTTPS:

```
git clone https://github.com/celineyayifeng/National-Gallery-Art-Analytics.git
```

With ssh:

```
git clone git@github.com:celineyayifeng/National-Gallery-Art-Analytics.git
```

If not done already, generate a corresponding ssh credentials file and store it as json file named `google-cred.json` in the cloned repo under `./keys/google-cred.json`

#### Terraform 

Make sure to change `default` in the project variable in `variables.tf` with your project id. 

Initialize Terraform with the following command:
```
terraform init
```
Preview the changes with the following command:
```
terraform plan
```
Kick-start your project (execute the proposed plan) with the following command:
```
terraform apply
```

Inspect the VM instance created.

#### Kestra

cd into kestra directory in terminal:

```
cd ../kestra/
```

The docker image is already created. Initialize docker container to run kestra on port 8080:

```
docker-compose up
```

Once it's completed running,

```
curl http://locahost:8080/
```

Kestra UI should show up in default browser.

Make sure namespace is in national-gallery-art-analytics. Go to KV Store.

`key: GCP_CREDS`

`Type: JSON`

`Value: ` This should be the secret value of your GCP credentials.

Once above is completed. Execute the following workflows in this order:

- gcp_kv

- gcp_setup

Once the above have successfully executed, the gcp storage bucket and bigquery dataset should be created.

Execute the following to export the data into GCP bucket:

- extract_identifier: can get objects, constituents, locations csv files

- extract_objects_categorization: can get csv files with objects attributes

- extract_constituents_categorization: can get csv files with constituents attributes

Check GCP bucket to see whether the csv files are generated after execution.

#### Create external tables using Bigquery

Copy and paste the sql commands in the files in the bigquery_ext_tables folder to create the external tables in Bigquery. 

#### DBT

Set up DBT. Connect to Bigquery. Once cloud IDE starts up, run

```
dbt build
```

This will build all the staging and fact tables in Bigquery. 

### Dashboard

Go to Looker Studio and select the project and datasets you are working with. 

Graphs and visuals are created to explore high-level information regarding the classifications and donors of the artwork collection as well as the number of artworks owned by NGA overtime. You can explore more with the different datasets. 

Looker Studio: https://lookerstudio.google.com/reporting/a97044e0-e790-4711-b2da-4d8a70a43b0a 

<img width="806" alt="image" src="https://github.com/user-attachments/assets/e8ef9e5d-16cd-41a6-843f-cd050fca308f" />


### References 

Big shoutout goes to the [National Gallery of Art Open Data Program](https://github.com/NationalGalleryOfArt/opendata) for the open data source. 




