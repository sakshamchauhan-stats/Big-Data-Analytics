# Unity Catalog Setup in Azure Databricks

Unity Catalog is the centralized governance solution in Azure Databricks for managing data assets, access permissions, metadata, and cloud storage connections.

## 1. Attach the Workspace to a Metastore

Before configuring Unity Catalog, ensure that the Databricks workspace is assigned to a Unity Catalog metastore.

- Open the Databricks Account Console.
- Navigate to the metastores section.
- Create a metastore if one does not already exist for the required region.
- Assign the metastore to your Databricks workspace.

A metastore is the top-level governance boundary for Unity Catalog objects.

## 2. Create an Access Connector for Azure Databricks

An Access Connector is an Azure resource that provides a managed identity for Databricks to authenticate with Azure Storage.

Navigate to **Azure Portal → Create a resource → Access Connector for Azure Databricks**.

<img width="510" height="376" alt="image" src="https://github.com/user-attachments/assets/f8808dce-172a-41ef-94fc-2cc697a34532" />

*Figure 1: Configure the Access Connector and its Azure resource details.*

<img width="709" height="701" alt="image" src="https://github.com/user-attachments/assets/feb8d5eb-3160-45c7-b536-8f9ea96f7371" />

*Figure 2: Review the configuration and confirm the managed identity type.*

One Access Connector can be reused for multiple storage locations, provided its identity has the necessary permissions on each target storage resource.

## 3. Assign Storage Permissions

The Access Connector needs permission to access the Azure Storage data.

Navigate to:

**Azure Portal → Storage Account → Access Control (IAM) → Add role assignment**

- **Role:** Storage Blob Data Contributor
- **Assign access to:** Managed identity
- **Managed identity:** Select the access connector

Assign the role at the appropriate storage account or container scope, depending on the required access.

<img width="940" height="268" alt="image" src="https://github.com/user-attachments/assets/73e741e3-74c5-4d30-8488-52ff04544350" />

*Figure 3: Open Access Control (IAM) on the Azure Storage account.*

<img width="940" height="396" alt="image" src="https://github.com/user-attachments/assets/f36abc55-6bc3-463a-b181-12afd8c2704d" />

*Figure 4: Select the Access Connector managed identity for the role assignment.*

<img width="940" height="334" alt="image" src="https://github.com/user-attachments/assets/ec6c2a46-7046-4931-af18-ce784532fef2" />

*Figure 5: Review the Storage Blob Data Contributor role and selected identity.*

<img width="940" height="362" alt="image" src="https://github.com/user-attachments/assets/d9a7b28e-9ddd-45e5-988c-3b0d3d8f6ee5" />

*Figure 6: Verify that the Access Connector has the required storage permissions.*

The Storage Blob Data Contributor role allows the identity to read, write, and delete blob data within its assigned scope. Use narrower permissions where appropriate for production environments.

## 4. Create a Storage Credential in Databricks

A storage credential is a Unity Catalog object that stores the authentication mechanism used to access cloud storage.

Navigate to:

**Databricks Workspace → Catalog Explorer → External Data → Credentials → Create credential**

Configure the credential:

- **Credential Type:** Azure Managed Identity
- **Credential Name:** `access_connector_for_azure`
- **Access Connector ID:** Provide the resource ID of `access_connector_for_databricks`.
- **User-assigned Managed Identity ID:** Leave blank when using the system-assigned identity.

Select **Create**.

<img width="940" height="416" alt="image" src="https://github.com/user-attachments/assets/35f6fffd-1de3-4a6e-9c61-9fd62993a0a9" />

*Figure 7: Create a managed-identity storage credential and associate it with the Access Connector.*

<img width="940" height="305" alt="image" src="https://github.com/user-attachments/assets/ddffd19f-468a-4b54-baac-5cee8d8fd47c" />

*Figure 8: Verify the storage credential and its Access Connector resource ID.*

The storage credential can be reused for multiple external locations, provided the associated identity has permission to access each target path.

## 5. Create an External Location
An external location connects a cloud storage path with a storage credential and allows Unity Catalog to govern access to that path.

Navigate to:

**Databricks Workspace → Catalog Explorer → External Data → External Locations → Create**

Provide:

- **External Location Name:** For example, `azure_container_location`
- **URL:** The ADLS Gen2 container path
- **Storage Credential:** `access_connector_for_azure`

Refer to the notebook added for creating External Location using SQL. 


### Standard ADLS Gen2 URL Format

```text
abfss://<container-name>@<storage-account-name>.dfs.core.windows.net/<path>
```
Azure Storage uses containers within storage accounts. An external location can reference a container or a specific path within it.

The external location can also be created using SQL in a Databricks notebook. I will document the SQL implementation separately.


## 7. Key Learnings

- Understand the role of a Unity Catalog metastore.
- Create an Azure Databricks Access Connector.
- Assign managed-identity permissions to Azure Storage.
- Create a Unity Catalog storage credential.
- Connect Azure Storage containers through external locations.
- Understand how Unity Catalog governs access to external cloud data.

## Purpose

This exercise is part of my Big Data Engineering and Cloud learning journey, focusing on Unity Catalog, managed identities, Azure Storage integration, and secure data access in Azure Databricks.

---

### Connect with Me

- LinkedIn: https://linkedin.com/in/sakshamstats
- Email: saksham12chauhan07@gmail.com
