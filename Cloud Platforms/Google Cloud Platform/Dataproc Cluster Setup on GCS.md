# Google Cloud Dataproc Cluster Setup

This document covers the creation and configuration of a single-node Apache Hadoop cluster using Google Cloud Dataproc.

### Objective

The objective was to create a Hadoop environment on Google Cloud Platform (GCP) and understand how a managed Dataproc cluster can be used for Big Data processing.

### Environment

- Cloud Platform: Google Cloud Platform (GCP)
- Service: Google Cloud Dataproc
- Cluster Name: `learning-cluster`
- Region: `asia-southeast3`
- Zone: `asia-southeast3-c`
- Cluster Type: Single-node
- Machine Type: `n4-standard-2`
- Master Boot Disk: `32 GB`
- Optional Components:
  - Docker
  - Jupyter
- Component Gateway: Enabled
- Auto-stop: 20 minutes of inactivity

### 1. Creating the Dataproc Cluster

The cluster was created using Google Cloud Shell with the following command:

```bash
gcloud dataproc clusters create learning-cluster \
    --region=asia-southeast3 \
    --zone=asia-southeast3-c \
    --single-node \
    --master-machine-type=n4-standard-2 \
    --master-boot-disk-size=32GB \
    --optional-components=DOCKER,JUPYTER \
    --enable-component-gateway \
    --stop-max-idle=20m

