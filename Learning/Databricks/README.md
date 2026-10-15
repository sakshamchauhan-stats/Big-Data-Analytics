## Azure Databricks

Azure Databricks is a cloud-based data analytics platform built on Apache Spark and integrated with Microsoft Azure. It provides a collaborative environment for data engineering, big data processing, machine learning, and analytics.

---

### 1. Introduction to Azure Databricks

- **Apache Spark:** Distributed processing engine for large-scale data processing.
- **Databricks Workspace:** Environment for notebooks, jobs, SQL queries, and collaborative development.
- **Data Engineering:** Build ETL/ELT pipelines using Python, PySpark, SQL, and Spark.
- **Machine Learning:** Develop and deploy machine learning models using MLflow and other ML libraries.
- **Azure Integration:** Connects with Azure Data Lake Storage, Blob Storage, Azure Data Factory, and other Azure services.

### 2. Apache Spark

Apache Spark is a distributed computing engine designed to process large datasets across multiple machines.

**Key Components:**

- **Spark Driver:** Coordinates the execution of Spark applications.
- **Executors:** Execute tasks and process data across worker nodes.
- **SparkSession:** Entry point for working with Spark DataFrames and SQL.
- **PySpark:** Python API for Apache Spark.
- **Transformations:** Operations such as `filter()`, `select()`, and `groupBy()`.
- **Actions:** Operations such as `count()`, `collect()`, and `show()` that trigger execution.
Spark uses lazy evaluation, allowing transformations to be optimized before execution.

### 3. Azure Databricks Architecture

Azure Databricks separates the control plane, where workspace services operate, from the compute plane, where data processing takes place.

- **Control Plane:** Manages workspace services, notebooks, jobs, and orchestration.
- **Compute Plane:** Provides compute resources for executing Spark workloads.
- **Storage Layer:** Stores data in Azure Data Lake Storage, Azure Blob Storage, and other supported sources.
- **Unity Catalog:** Provides centralized data governance, access control, and metadata management.

**Architecture:**

```text
        Azure Databricks
               |
       Control Plane
               |
     Notebooks / Jobs / SQL
               |
        Compute Plane
               |
      Spark Driver & Workers
               |
       Data Processing
               |
      Azure Cloud Storage
```

### 4. DBFS (Databricks File System)

DBFS historically provided a filesystem-like interface for accessing data in Databricks.

- Used to access files and storage locations from notebooks.
- Supports file operations and integration with data processing workflows.
- DBFS root and DBFS mounts are legacy approaches and are not recommended for new data architectures.
- **Unity Catalog volumes** and external locations are preferred for governed data access.

### 5. Cluster and Compute Configurations

Databricks compute resources execute Spark applications, notebooks, and jobs.

**Types of Compute:**

- **All-purpose Compute:** Used for interactive development, exploration, and notebook execution.
- **Jobs Compute:** Used for scheduled or automated workloads.
- **SQL Warehouses:** Optimized compute for SQL queries, dashboards, and BI tools.
- **Serverless Compute:** Provides managed compute where supported by the workspace and workload.

**Key Configuration Parameters:**

- **Runtime Version:** Determines the Databricks Runtime, including Spark and supported libraries.
- **Node Type:** Defines CPU, memory, and hardware specifications.
- **Worker Nodes:** Execute distributed tasks.
- **Driver Node:** Coordinates Spark execution.
- **Autoscaling:** Adjusts the number of workers based on workload demand.
- **Auto-Termination:** Stops idle compute to reduce costs.
- **Access Mode:** Controls how users and workloads access compute and governed data.

### 6. Unity Catalog

Unity Catalog is Databricks' centralized governance solution for managing data, AI assets, permissions, and metadata.

**Key Components:**

- **Metastore:** Top-level governance boundary that stores metadata and manages access controls.
- **Catalog:** Organizes schemas and represents a major level in the data namespace.
- **Schema:** Organizes tables, views, volumes, and other objects.
- **Tables and Views:** Store or expose structured data for querying.
- **Storage Credential:** Defines the identity or authentication mechanism used to access cloud storage.
- **External Location:** Connects a cloud storage path with a storage credential and governs access to that path.
- **Volumes:** Provide governed access to files that are not necessarily tabular datasets.
- **Privileges:** Control which users and groups can access or manage data objects.

**Unity Catalog Hierarchy:**

```text
Metastore
    |
  Catalog
    |
  Schema
    |
 Tables / Views / Volumes
```

**External Data Access:**

```text
Azure Storage Account
          |
    Azure Container
          |
   Storage Credential
          |
   External Location
          |
 Unity Catalog Governance
          |
 External Tables / Volumes
```

External locations do not automatically create catalogs or tables. External tables can reference files stored in Azure while retaining Unity Catalog governance.

### 7. Key Learnings

- Understand distributed data processing using Apache Spark and PySpark.
- Explore Azure Databricks architecture and compute configurations.
- Understand DBFS and modern alternatives for governed file access.
- Learn how Unity Catalog organizes and governs data assets.
- Connect Azure cloud storage with Databricks using storage credentials and external locations.
- Develop scalable ETL pipelines and analytics workflows using Spark.

### Purpose

This repository documents my learning of Azure Databricks, Apache Spark, distributed data processing, compute management, and Unity Catalog as part of my Big Data Engineering and Cloud learning journey.

---
---

### Connect with Me

- LinkedIn: https://linkedin.com/in/sakshamstats
- Email: saksham12chauhan07@gmail.com
