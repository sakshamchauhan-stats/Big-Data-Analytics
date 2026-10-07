## Google Cloud Platform (GCP)

Google Cloud Platform (GCP) is a collection of managed infrastructure, data, networking, security, analytics, and AI/ML services provided by Google.

GCP services can be provisioned and managed through the Google Cloud Console, APIs, or command-line tools such as the `gcloud` CLI.

GCP provides cloud-based services for compute, storage, databases, Big Data processing, networking, security, DevOps, and AI/ML workloads.

The platform allows organizations to provision infrastructure and consume managed services without having to manage all of the underlying physical infrastructure.

### Resource Hierarchy

GCP resources are organized using the following hierarchy:

```text
Organization
    |
    v
Folders
    |
    v
Projects
    |
    v
Resources
```

**Organization**
- Represents the top-level entity for an organization in GCP.
- Provides a central structure for managing cloud resources.
**Folders**
- Used to logically group projects.
- Particularly useful for larger organizations with multiple teams or environments.

``` text
Organization
│
├── Data Engineering
│   ├── Development Project
│   └── Testing Project
│
└── Data Science
    ├── Development Project
    └── Deployment Project
```

**Projects**
A project is the fundamental unit used to create and manage GCP resources.
A project can contain resources such as:
- Cloud Storage
- BigQuery
- Vertex AI
- Dataproc
- Compute Engine

When a project is created, it has:
- Project Name – Human-readable name
- Project ID – Unique identifier
- Project Number – Google-generated numeric identifier

**Resources**
Resources are the actual cloud services created inside a project.
Examples:
- Virtual Machines
- Storage Buckets
- Dataproc Clusters
- BigQuery Datasets
- Databases

### Major GCP Service Categories
- Compute: Compute Engine, GKE, Cloud Run
- Storage:	Google Cloud Storage
- Databases:	Cloud SQL, Spanner, Firestore, Datastore
- Data & Analytics:	BigQuery, Dataflow, Dataproc
- AI / ML:	Vertex AI
- Security:	IAM, Secret Manager


### Data Engineering & Big Data
GCP provides several services for building Big Data and Data Engineering workflows.

**Pub/Sub**
- Messaging service used for real-time event ingestion.
- Can receive events from sources such as IoT systems, clickstreams, transactions, and applications.
Example:
```
Data Sources
     |
     v
   Pub/Sub
     |
     v
Data Processing
```

**Dataflow**
- Fully managed data processing service.
- Supports both batch and streaming workloads.
- Can transform and process data before sending it to downstream systems.
Example:
```
Data Sources
     |
     v
  Dataflow
     |
     v
Processed Data
```

**Dataproc**
- Managed service for running Apache Hadoop and Apache Spark clusters.
- Simplifies cluster provisioning and management.
- Useful for distributed Big Data processing workloads.
Example:
```
GCS
 |
 | Data
 v
Dataproc
 |
 ├── Hadoop
 └── Spark
 |
 v
Processed Data
```

**BigQuery**
- Fully managed analytical data warehouse.
- Used for large-scale SQL-based data analysis.
- Allows large datasets to be queried without managing the underlying database infrastructure.

### Machine Learning Operations
**Vertex AI**
Vertex AI is GCP's platform for building, training, deploying, and managing machine learning and AI workloads.
A simplified workflow can be:
```
Data
  |
  v
BigQuery / GCS
  |
  v
ML Processing
  |
  v
Vertex AI
  |
  v
Model Deployment
  |
  v
Prediction API
```
Vertex AI can therefore be integrated with Data Engineering pipelines and application infrastructure.
