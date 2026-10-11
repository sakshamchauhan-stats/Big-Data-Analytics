# Azure Synapse Analytics

**Azure Synapse Analytics** is an integrated analytics platform on Microsoft Azure that combines data warehousing, SQL-based data lake analytics, Apache Spark processing, and data integration. It enables users to ingest, transform, process, and analyze large datasets using different compute engines within a unified workspace.

### Environment

- Cloud Platform: Microsoft Azure
- Analytics Service: Azure Synapse Analytics
- Storage Service: Azure Data Lake Storage Gen2 (ADLS Gen2)
- SQL Engine: Synapse SQL
- SQL Language: Transact-SQL (T-SQL)
- Big Data Processing: Apache Spark
- Data Integration: Synapse Pipelines
- Development Interface: Azure Synapse Studio

---

### Core Components of Azure Synapse Analytics

Azure Synapse Analytics brings together multiple analytics capabilities within a single workspace.

**1. Dedicated SQL Pool**

A dedicated SQL pool is a provisioned data warehouse that uses a Massively Parallel Processing (MPP) architecture to distribute analytical workloads across multiple compute resources.

- Stores data in Synapse-managed warehouse storage.
- Uses distributed processing to execute analytical queries.
- Supports relational tables, data distribution strategies, and warehouse optimization.
- Is suitable for enterprise data warehousing and predictable, recurring analytical workloads.
- Compute capacity can be scaled and paused when appropriate.

**2. Serverless SQL Pool**

A serverless SQL pool allows users to query data directly from external storage without provisioning a dedicated data warehouse.

- Queries data stored in Azure Data Lake Storage Gen2 and supported Azure storage sources. Quite similar to AWS Athena.
- Uses T-SQL to analyze data in formats such as CSV and Parquet, with support for other formats and capabilities depending on the query interface.
- Does not require a dedicated warehouse to be provisioned.
- Is useful for ad hoc analytics, data exploration, and querying data lakes.

**3. Apache Spark Pool**

Apache Spark pools provide distributed computing capabilities for large-scale data processing.

- Supports PySpark, Spark SQL, Scala, and other supported Spark workloads.
- Can process structured, semi-structured, and unstructured datasets.
- Integrates with ADLS Gen2 for reading and writing data.
- Is useful for ETL, data transformation, feature engineering, and large-scale analytics.

**4. Synapse Pipelines**

Synapse Pipelines provide data integration and workflow orchestration capabilities.

- Connect to different data sources.
- Support data movement and pipeline-based processing.
- Orchestrate ETL/ELT workflows.
- Schedule and coordinate activities across analytics services.
- Use a data integration experience closely related to Azure Data Factory.

**5. Synapse Studio**

Synapse Studio is the web-based development environment used to work with Synapse resources.

- Develop and execute SQL queries.
- Create and run Spark notebooks.
- Build and monitor data pipelines.
- Explore data in connected storage accounts.
- Manage workspace artifacts and analytics activities.

---

### Working with External Data in ADLS Gen2

Azure Synapse SQL can query data stored in Azure Data Lake Storage Gen2 without necessarily loading it into a dedicated warehouse.

This is achieved using external tables or functions such as `OPENROWSET`, depending on the query scenario.

**Typical workflow:**

1. Store datasets in an ADLS Gen2 container.
2. Configure the appropriate storage authentication and permissions.
3. Connect to the relevant Synapse SQL endpoint.
4. Query the files directly or define external tables.
5. Use SQL to filter, aggregate, and analyze the data.
6. Use Spark Pool to analyze the data. 

External tables define how the query engine accesses external data. The underlying files remain in the storage account unless a separate operation loads or exports the data elsewhere.

This is particularly useful when working with data lake architectures, where raw and transformed datasets are maintained in storage and queried by different analytics engines.

---

**Refer to the screenshots below:**

a. Azure Synapse Analytics workspace and general configuration

<img width="940" height="692" alt="image" src="https://github.com/user-attachments/assets/13685e23-ff5f-4249-8973-bfd00201704e" />
<img width="940" height="700" alt="image" src="https://github.com/user-attachments/assets/a5bcc85e-7d88-4227-a30a-5ce27183b045" />
<img width="940" height="729" alt="image" src="https://github.com/user-attachments/assets/74597d77-5133-4f95-910c-03bbe31585a5" />
<img width="1837" height="500" alt="image" src="https://github.com/user-attachments/assets/11d09334-4dee-4f1c-962b-1741d485b253" />

b. Azure Synapse Studio UI and Pools

<img width="1919" height="697" alt="image" src="https://github.com/user-attachments/assets/b4fc5d97-0fd8-45f9-bf31-9b0b23e17eeb" />
<img width="1589" height="307" alt="image" src="https://github.com/user-attachments/assets/f796257b-bd7c-427e-aa14-dd8ad9457e11" />

c. SQL query execution and results

<img width="1919" height="760" alt="image" src="https://github.com/user-attachments/assets/568f793f-62d8-4e00-b1a1-177397fb2b7f" />

d. Apache Spark pool and notebook exploration

<img width="940" height="603" alt="image" src="https://github.com/user-attachments/assets/945ed7bf-9baf-47d7-8819-8feae401dc9e" />
<img width="940" height="811" alt="image" src="https://github.com/user-attachments/assets/8380c33a-9ca8-47cf-8a23-186218d745a4" />
<img width="940" height="1268" alt="image" src="https://github.com/user-attachments/assets/0c8fd95c-6c34-43d8-b9fa-e932b11d2098" />
<img width="1527" height="613" alt="image" src="https://github.com/user-attachments/assets/65719673-1a47-4431-8ca2-b8f7ce7cb864" />

f. Synapse Pipelines

<TO DO>

---

### Key Concepts to Remember

- **MPP (Massively Parallel Processing):** Distributes query processing across multiple compute resources to handle large workloads.
- **Data distribution:** Dedicated SQL pools distribute table data using strategies such as hash, round-robin, and replicated distribution.
- **ADLS Gen2:** Azure's data lake storage capability, built on Blob Storage with hierarchical namespace support.
- **External tables:** SQL table definitions that reference data stored outside the managed warehouse.
- **T-SQL:** The SQL dialect used by Synapse SQL, with differences in supported features between dedicated and serverless pools.
- **Apache Spark:** A distributed processing engine used for data engineering, transformations, and analytics.
- **ETL/ELT:** Data integration and transformation approaches that Synapse Pipelines can orchestrate.
- **Separation of storage and compute:** Data may reside in a data lake while different compute engines access it for different workloads.

---

### Key Takeaways

- Understood Azure Synapse Analytics as an integrated platform for data warehousing, big data processing, and data integration.
- Explored the distinction between dedicated SQL pools and serverless SQL pools.
- Learned how Synapse integrates with Azure Data Lake Storage Gen2.
- Understood how external tables and `OPENROWSET` enable SQL-based access to supported external datasets.
- Explored the role of Apache Spark in distributed data processing.
- Learned how Synapse Pipelines can orchestrate data engineering workflows.
- Developed a conceptual understanding of how storage, compute, SQL analytics, and Spark work together in an Azure analytics architecture.

### Connect with Me

- LinkedIn: https://linkedin.com/in/sakshamstats
- Email: saksham12chauhan07@gmail.com
