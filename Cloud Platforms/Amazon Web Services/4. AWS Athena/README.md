# Amazon Athena

**Amazon Athena** is a serverless, interactive query service provided by Amazon Web Services (AWS) that allows users to analyze data stored in Amazon S3 using standard SQL. It does not require users to provision or manage database servers, making it useful for data lake analytics, ad hoc queries, log analysis, and exploratory data analysis.

Unlike a traditional data warehouse, Athena primarily queries data directly from external storage rather than requiring the data to be loaded into a separate, Athena-managed warehouse.

### Environment

- Cloud Platform: Amazon Web Services (AWS)
- Analytics Service: Amazon Athena
- Primary Data Source: Amazon S3
- Query Language: SQL
- Query Engine: Distributed query engine based on Trino technology
- Data Catalog: AWS Glue Data Catalog or another supported catalog
- Table Type: External Table
- Data Formats: CSV, JSON, Parquet, ORC, and other supported formats
- Query Results Location: Amazon S3
- Access Management: AWS IAM roles and policies

### What I Worked On

- Explored Amazon Athena as a serverless SQL query service for data stored in Amazon S3.
- Understood how Athena can query datasets without loading them into a dedicated data warehouse.
- Learned how databases and external tables define the structure and location of data stored in S3.
- Explored the role of AWS Glue Data Catalog in storing table metadata.
- Studied how SQL queries can filter, aggregate, and analyze large datasets in a data lake.
- Understood how Athena stores query results in a designated S3 location.
- Explored how columnar file formats such as Parquet can reduce the volume of data scanned and improve query efficiency.

---

### Core Components of Amazon Athena

Amazon Athena works with other AWS services to provide serverless analytics over data stored in object storage.

**1. Amazon Athena Query Engine**

Athena executes SQL queries against supported data sources without requiring users to provision query-processing infrastructure.

- Uses distributed query processing to analyze large datasets.
- Supports SQL-based data exploration and analytics.
- Can query structured and semi-structured data in supported formats.
- Allows users to query data directly from S3.
- Supports features such as filtering, joins, aggregations, and common analytical SQL operations.
- Provides integrations with other AWS analytics and data services.

Athena is designed primarily for interactive analytics and querying data lakes rather than operating as a conventional, provisioned data warehouse.


**2. Athena Query Results**

Athena writes query results and certain query-related files to an S3 location configured for the workgroup or query execution.

- Query output is stored in S3.
- Results can be downloaded or accessed by supported downstream workflows.
- Workgroups can be used to configure result locations and control query settings.
- The output files are separate from the original source datasets.

The source data remains in its original location unless another operation explicitly modifies or copies it.

---

### Architecture: Storage vs. Compute

One of the most important concepts in Athena is the separation of data storage and query processing.

Amazon S3 stores the underlying data, while Athena provides the query execution engine.

**Typical workflow:**

1. Upload datasets to an Amazon S3 bucket.
2. Define the schema and table metadata using Athena SQL, AWS Glue Crawlers, or another supported catalog workflow.
3. Store the table definitions in the AWS Glue Data Catalog or another supported catalog.
4. Execute SQL queries in Athena.
5. Athena reads the relevant source data from S3 and processes the query.
6. Query results are written to the configured S3 output location.

This architecture allows users to query data without maintaining a traditional database server or a provisioned data warehouse.

---

### Creating an External Table in Athena

*a. Attaching S3 bucket to Athena*
<img width="688" height="669" alt="image" src="https://github.com/user-attachments/assets/702838c7-51a3-42be-b428-5512ea05954b" />

*b. Create database, external table and query the results*
Refer to the SQL file for query. \
Query results are shown below:
<img width="1817" height="544" alt="image" src="https://github.com/user-attachments/assets/4a35ef2d-dea8-4d7a-b926-2964722a3327" />


---

### Key Takeaways

- Understood Amazon Athena as a serverless SQL query service for data lake analytics.
- Learned how Athena queries data stored in Amazon S3 without requiring it to be loaded into a dedicated warehouse.
- Explored the role of external tables in defining schemas and source locations.
- Understood how AWS Glue Data Catalog manages metadata for external datasets.
- Learned how Athena query results are written to a configured S3 location.
- Explored how Parquet, ORC, partitioning, and column selection can improve query efficiency.
- Understood the difference between Athena, Amazon Redshift, and Redshift Spectrum.
- Developed a conceptual understanding of how S3, Athena, and Glue work together in a serverless data analytics architecture.

---

### Connect with Me

- LinkedIn: https://linkedin.com/in/sakshamstats
- Email: saksham12chauhan07@gmail.com
