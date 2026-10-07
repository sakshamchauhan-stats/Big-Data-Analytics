# Google Cloud Storage (GCS) Bucket Setup

This document covers the creation and configuration of a Google Cloud Storage (GCS) bucket for storing data used during the Big Data Engineering learning exercises.

### Objective

The objective was to create a cloud storage bucket on Google Cloud Platform (GCP) and upload a sample dataset that could later be accessed and processed using the Dataproc cluster.

### Environment

- Cloud Platform: Google Cloud Platform (GCP)
- Storage Service: Google Cloud Storage (GCS)
- Bucket Name: `example_bucket_for_big_data_engineering`
- Storage Class: `STANDARD`
- Location: `US-EAST1`
- Access Control: Uniform bucket-level access
- Public Access Prevention: Enabled
- Soft Delete: Disabled

### 1. Creating the GCS Bucket

The bucket was created using Google Cloud Shell with the following command:

```bash
gcloud storage buckets create gs://example_bucket_for_big_data_engineering \
    --default-storage-class=STANDARD \
    --location=US-EAST1 \
    --uniform-bucket-level-access \
    --public-access-prevention \
    --soft-delete-duration=0
