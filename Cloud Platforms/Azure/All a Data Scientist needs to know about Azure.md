## Microsoft Azure

Microsoft Azure is Microsoft's cloud platform for compute, storage, databases, networking, data engineering, AI/ML, security, and DevOps.

Azure provides managed cloud services that can be provisioned and operated without managing all of the underlying physical infrastructure.

---

### 1. Resource Hierarchy

Azure resources are organized using the following hierarchy:

```text
Microsoft Entra ID / Tenant
        |
        v
Management Groups
        |
        v
Subscriptions
        |
        v
Resource Groups
        |
        v
Resources
```

**Tenant / Microsoft Entra ID**
- Represents the organization's identity boundary.
- Contains users, groups, applications, and service principals.
- Microsoft Entra ID was previously known as Azure Active Directory (Azure AD).
- Used together with Azure Role-Based Access Control (RBAC) for access management.
  
**Management Groups**
- Used to organize multiple Azure subscriptions.
- Useful for applying governance and access policies across multiple subscriptions.
Example
```
Company
│
├── Root
├── Development
│   └── Data & AI
│
└── Production
```

Subscriptions
- A subscription is a billing and management boundary for Azure resources.
- A subscription can contain multiple resource groups and resources.
- Multiple subscriptions can exist under the same tenant.
Tenant
   |
   ├── Subscription A
   └── Subscription B

**Resource Groups**
- Logical containers for related Azure resources.
- Resources within a resource group are generally managed together through their lifecycle.
Example:
```
Subscription
    |
    └── Resource Group
          |
          ├── VM
          ├── Storage
          ├── Azure SQL
          └── Data Factory
```
**Resources**
Resources are the actual Azure service instances created inside resource groups.
Examples:
- Virtual Machines
- Storage Accounts
- Azure SQL Databases
- Data Factory
- Azure Machine Learning

### 2. Major Azure Service Categories
- Compute: Virtual Machines, App Service
- Storage: Azure Blob Storage, Azure Data Lake Storage Gen2
- Databases: Azure SQL, Cosmos DB
- Data & Analytics: Azure Data Factory, Azure Synapse Analytics, Databricks
- AI / ML: Azure Machine Learning, Azure AI, Azure OpenAI
- DevOps: Azure DevOps, GitHub
- Messaging: Event Hubs
- Security: Microsoft Entra ID, Azure RBAC
Azure also provides networking services such as Virtual Networks, VPN, DNS, and Load Balancing.

### 3. Storage

**Azure Blob Storage**
- Microsoft's object storage service.
- Data is stored within a storage account.
- Useful for storing unstructured data and files.
Example:
```
Subscription
     |
     v
Storage Account
     |
     v
Container
     |
     ├── file.csv
     ├── data.json
     └── model.pkl
```
**Containers** provide a logical way of organizing objects within a storage account.

**Azure Data Lake Storage Gen2 (ADLS Gen2)**
- Data lake storage built on Azure Blob Storage.
- Designed for analytics and Big Data workloads.
- Uses a hierarchical namespace for organizing data.
- Provides a file-system-like structure using directories and files.
- Commonly used for enterprise data lake architectures.

ADLS Gen2 is optimized for analytics workloads involving services such as Databricks and Spark.

**Azure Blob Storage vs ADLS Gen2**
Both are based on Azure storage, but ADLS Gen2 adds capabilities specifically designed for analytics and Big Data workloads.
```
Azure Blob Storage
        |
        v
Object Storage

ADLS Gen2
        |
        v
Hierarchical Data Lake
        |
        v
Analytics / Spark / Databricks
```

### 4. Data Engineering & Big Data
Azure provides several services for building Data Engineering and Big Data workflows.

**Azure Data Factory (ADF)**
- Cloud-based data integration and orchestration service.
- Can connect to different data sources.
- Used to move and transform data.
- Supports scheduling and pipeline orchestration.
- Pipelines can be visually designed using the ADF interface.
- Data Factory can execute transformations using different compute engines.
Example:
```
Data Sources
     |
     v
Azure Data Factory
     |
     v
Data Transformation
     |
     v
Data Lake / Database
```

**Azure Synapse Analytics**
- Integrated analytics platform.
- Provides capabilities for data warehousing, analytics, SQL, and Spark-based processing.
- Can be used for analytical workloads and data engineering.

**Azure Databricks**
- Managed analytics platform built around Apache Spark.
- Commonly used for large-scale data processing and data engineering.
- Can be used for Spark-based transformation and analytics workloads.
Spark can therefore be executed using platforms such as:
```
Azure
  |
  ├── Databricks
  |
  └── Synapse Spark
```
This is conceptually similar to using Dataproc for Spark/Hadoop workloads in GCP.

### 5. Databases
**Azure SQL**
- Managed relational database service.
- Provides SQL-based relational database capabilities.
**Azure Cosmos DB**
- Managed NoSQL database service.
- Designed for scalable application workloads.

### 6. Machine Learning Operations
**Azure Machine Learning** is Microsoft's platform for building, training, deploying, and managing machine learning models.
It is broadly comparable to Vertex AI in GCP.
```
Data
  |
  v
Data Lake / Database
  |
  v
Azure Machine Learning
  |
  v
Model Deployment
  |
  v
Prediction
```

### 7. Modern Data Architecture
Azure services can be combined to build a modern Data Engineering architecture.
```
Data Sources
     |
     v
Azure Data Factory
     |
     v
ADLS Gen2
     |
     v
Databricks / Synapse
     |
     v
Transformation
     |
     v
SQL / Data Warehouse
     |
     v
BI / Analytics
```

---

### Key Learnings
- Azure resources are organized through tenants, management groups, subscriptions, resource groups, and resources.
- Microsoft Entra ID provides the identity boundary for Azure.
- Azure RBAC is used to control access to Azure resources.
- Subscriptions provide billing and management boundaries.
- Resource groups are logical containers for related resources.
- Azure Blob Storage provides cloud object storage.
- ADLS Gen2 provides analytics-oriented data lake storage on Azure.
- Azure Data Factory is used for data integration and pipeline orchestration.
- Azure Synapse provides integrated analytics capabilities.
- Azure Databricks provides managed Spark-based data processing.
- Azure Stream Analytics supports streaming workloads using SQL-like queries.
- Azure SQL provides managed relational database capabilities.
- Cosmos DB provides NoSQL database capabilities.
- Azure Machine Learning supports machine learning workflows.
- Azure AI and Azure OpenAI provide AI capabilities for applications.
- Event Hubs supports large-scale event ingestion and streaming.
- Azure services can be combined to build complete Data Engineering and ML architectures.

### Purpose
The objective of this section is to develop a practical understanding of Microsoft Azure and its major services, with a focus on how Azure infrastructure can support Big Data Analytics, Data Engineering, and Machine Learning workflows.

--- 
### Connect with Me

- LinkedIn: https://linkedin.com/in/sakshamstats
- Email: saksham12chauhan07@gmail.com
