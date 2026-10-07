## Google Cloud Platform (GCP)

Google Cloud Platform (GCP) is a collection of managed infrastructure, data, networking, security, analytics, and AI/ML services provided by Google.

GCP services can be provisioned and managed through the Google Cloud Console, APIs, or command-line tools such as the `gcloud` CLI.

### Overview

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

Organization
- Represents the top-level entity for an organization in GCP.
- Provides a central structure for managing cloud resources.
Folders
- Used to logically group projects.
- Particularly useful for larger organizations with multiple teams or environments.

Organization
│
├── Data Engineering
│   ├── Development Project
│   └── Testing Project
│
└── Data Science
    ├── Development Project
    └── Deployment Project

