# Google BigQuery 
**Google BigQuery** is a fully managed, serverless data warehouse and analytics platform used to process and analyze large datasets using SQL. It separates storage and compute, allowing users to run analytical queries without managing the underlying infrastructure.

### Environment

- Cloud Platform: Google Cloud Platform (GCP)
- Account: GCP Free Trial
- Analytics Service: Google BigQuery
- Data Source: Google Cloud Storage (GCS)
- Table Type: External Table
- Query Language: GoogleSQL (SQL)

### What I Worked On

- Connected a Google Cloud Storage bucket to BigQuery.
- Created an external table referencing the dataset stored in GCS.
- Explored the table schema and data preview.
- Executed SQL queries to retrieve and analyze the underlying data.
- Understood how BigQuery can query data residing in external storage without requiring a separate data-loading step.

An external table stores its table definition and schema in BigQuery, while the underlying data remains in the external storage location.

---

**Refer to the screenshot below:**

a. BigQuery SQL Query and result preview
<img width="886" height="288" alt="image" src="https://github.com/user-attachments/assets/5b60b4c2-5ae9-4f19-9166-6988c7905296" />
<img width="1483" height="389" alt="image" src="https://github.com/user-attachments/assets/5609d9f8-8ebc-45bd-9705-3c12000d39ea" />

---

### Cross-Cloud Data Access: Amazon S3 and Azure Data Lake Storage

BigQuery can also work with data residing outside Google Cloud, including Amazon S3 and Azure Blob Storage, through supported BigQuery Omni and BigLake integrations.

Unlike the GCS external table setup demonstrated above, accessing data in these external cloud storage platforms involves additional connection and authorization configurations.

**Key points to understand:**

- **Amazon S3:** Configure a supported Amazon S3 connection in BigQuery, establish the required AWS permissions and trust relationship, and use the connection to access data through BigLake or supported BigQuery Omni capabilities.
- **Azure Blob Storage / ADLS Gen2:** Configure a supported Azure Blob Storage connection, establish the required Azure-side authentication and permissions, and use it to create and query BigLake tables.
- **Access control:** External connections and their associated service identities or credentials enable authorized access to the external data source. The exact configuration differs between AWS and Azure.

This provides a foundation for understanding how analytical workloads can access data across different cloud storage platforms.

---

### Key Takeaways

- Understood the role of BigQuery as a serverless analytical data warehouse.
- Learned how external tables provide SQL access to data stored in Google Cloud Storage.
- Explored the relationship between cloud object storage, table metadata, and SQL-based analytics.
- Gained an introduction to cross-cloud data access through BigLake connections.

### Connect with Me

- LinkedIn: https://linkedin.com/in/sakshamstats
- Email: saksham12chauhan07@gmail.com
