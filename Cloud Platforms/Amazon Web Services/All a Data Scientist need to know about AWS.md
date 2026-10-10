## Amazon Web Services (AWS)

Amazon Web Services (AWS) is Amazon's cloud platform providing managed infrastructure, data, networking, security, analytics, and AI/ML services.

AWS services can be provisioned and managed through the AWS Management Console, APIs, or command-line tools such as the `AWS CLI`.

AWS provides cloud-based services for compute, storage, databases, Big Data processing, networking, security, DevOps, and AI/ML workloads.

The platform allows organizations to provision infrastructure and consume managed services without having to manage all of the underlying physical infrastructure.

---

### 1. Resource Hierarchy

AWS resources can be organized using the following hierarchy:

```text
AWS Organization
       |
       v
Organizational Units (OUs)
       |
       v
AWS Accounts
       |
       v
Resources
```

**AWS Organization**
- Centrally manages multiple AWS accounts.
- Provides a structure for managing accounts, policies, and governance.

**Organizational Units (OUs)**
- Used to logically group AWS accounts.
- Accounts can be grouped by department, environment, or purpose.

```text
AWS Organization
│
└── Analytics OU (Parent OU)
    │
    ├── Data Engineering (Child OU)
    │   ├── Development Account
    │   └── Testing Account
    │
    └── Data Science (Child OU)
        ├── Development Account
        └── Testing Account
```

**AWS Accounts** 
An AWS account is the primary container for AWS resources and provides a security and administrative boundary.

Each AWS account has a unique 12-digit account ID.

An account can contain resources such as:
- EC2 Instances
- S3 Buckets
- EMR Clusters
- Redshift Clusters
- SageMaker Resources

**Resources** 
Resources are the actual cloud services created within an AWS account.

Examples:
- Virtual Machines
- Storage Buckets
- Databases
- Data Processing Clusters
- Machine Learning Endpoints

### 2. Major AWS Service Categories

- Compute: EC2, Lambda, ECS, EKS
- Storage: Amazon S3
- Databases: Amazon RDS, DynamoDB, Aurora
- Data Warehousing: Amazon Redshift
- Data Processing: AWS Glue, Amazon EMR
- Streaming & Messaging: Amazon Kinesis
- AI / ML: Amazon SageMaker, Amazon Bedrock
- DevOps: AWS CodeBuild, CodePipeline, CodeDeploy

### 3. Data Engineering & Big Data

AWS provides several services for building Big Data and Data Engineering workflows.

**Amazon S3**
- Object storage service used to store structured, semi-structured, and unstructured data.
- Data is stored in buckets as objects.
- Buckets can organize data using prefixes that resemble folders.

Example:
```text
S3 Bucket
    |
    ├── Raw Data
    ├── Processed Data
    └── Archived Data
```

**Amazon EMR**
- Managed service for running Apache Hadoop and Apache Spark clusters.
- Simplifies the provisioning and management of Big Data processing infrastructure.
- Can be used for distributed data processing with Hadoop, Spark, and other supported frameworks.

Example:
```text
S3
 |
 | Data
 v
Amazon EMR
 |
 ├── Hadoop
 └── Spark
 |
 v
Processed Data in S3
```

**AWS Glue**
- Managed ETL and data integration service.
- Supports data discovery, preparation, transformation, and movement.
- Provides managed Apache Spark-based processing.
- Includes a Data Catalog for storing metadata about datasets.

**Amazon Kinesis**
- Used for real-time data streaming and ingestion.
- Can process continuous streams of events from applications, transactions, IoT systems, and other sources.

Example:
```text
Data Sources
     |
     v
Amazon Kinesis
     |
     v
Stream Processing
     |
     v
S3 / Data Warehouse
```

**Amazon Redshift**
- Fully managed analytical data warehouse.
- Used for large-scale SQL-based data analysis.
- Supports analytical workloads without requiring you to manage the underlying warehouse infrastructure.

### 4. Databases and Storage

**Amazon RDS**
- Managed relational database service.
- Supports relational database engines such as PostgreSQL and MySQL.

**Amazon Aurora**
- Relational database engine compatible with MySQL and PostgreSQL.
- Designed for high performance and availability within AWS.

**Amazon DynamoDB**
- Fully managed NoSQL database.
- Supports key-value and document data models.
- Designed for applications requiring low-latency access at scale.

### 5. Machine Learning and AI Operations

**Amazon SageMaker** 
Amazon SageMaker provides services for building, training, deploying, and managing machine learning models.

A simplified workflow can be:

```text
Data
  |
  v
S3
  |
  v
Data Processing
  |
  v
SageMaker
  |
  v
Model Training
  |
  v
Model Deployment
  |
  v
Prediction Endpoint
```

**Amazon Bedrock**
- Managed service for building generative AI applications using foundation models.
- Supports applications involving large language models (LLMs) and other generative AI capabilities.

### 6. ETL, Stream Processing & Workflow Orchestration

**AWS Glue**
- Used for ETL pipelines and data integration.
- Supports managed Apache Spark-based data transformations.

**Amazon Managed Service for Apache Flink**
- Used for processing and analyzing streaming data in real time.
- Can be integrated with streaming sources such as Amazon Kinesis.

**Amazon MWAA (Managed Workflows for Apache Airflow)**
- Managed service for workflow orchestration using Apache Airflow.
- Can schedule, coordinate, and monitor data pipelines involving multiple AWS services.

**AWS DevOps Services**
- CodeBuild: Builds and tests application code.
- CodePipeline: Automates CI/CD workflows.
- CodeDeploy: Automates application deployments.

### 7. Example of Big Data Architecture

AWS services can be combined to create an end-to-end Big Data architecture:

```text
Data Sources
     |
     v
Amazon Kinesis
     |
     v
Stream Processing
     |
     v
S3 (Raw Data)
     |
     v
AWS Glue / Amazon EMR
     |
     v
S3 (Processed Data)
     |
     v
Amazon Redshift
     |
     v
Analytics / Reporting
```

Amazon MWAA can orchestrate and schedule the pipeline, while SageMaker can be integrated for machine learning workloads.

---

### Key Learnings

- AWS organizes resources through organizations, organizational units, accounts, and resources.
- AWS accounts provide security and administrative boundaries for cloud resources.
- EC2 provides virtual machines on which software such as Linux, Hadoop, and Spark can be installed and run.
- S3 provides cloud object storage using buckets and objects.
- Amazon EMR provides managed Hadoop and Spark clusters.
- AWS Glue supports ETL, data integration, and metadata cataloging.
- Amazon Kinesis supports real-time data streaming.
- Amazon Redshift provides large-scale analytical processing using SQL.
- RDS and Aurora provide relational databases, while DynamoDB provides a NoSQL database.
- SageMaker supports machine learning workflows, while Bedrock supports generative AI applications.
- MWAA provides managed Apache Airflow for workflow orchestration.
- AWS services can be combined to build complete Data Engineering and ML architectures.

### Purpose

The objective of this section is to develop a practical understanding of Amazon Web Services and its major services, with a focus on how cloud infrastructure can support Big Data Analytics, Data Engineering, and Machine Learning workflows.

---

### Connect with Me

- LinkedIn: https://linkedin.com/in/sakshamstats
- Email: saksham12chauhan07@gmail.com
