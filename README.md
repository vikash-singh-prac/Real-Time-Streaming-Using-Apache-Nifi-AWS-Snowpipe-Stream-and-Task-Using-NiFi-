# Real-Time-Streaming-Using-Apache-Nifi-AWS-Snowpipe-Stream-and-Task-Using-NiFi-
The project is aimed to stream data in real time using Apache NiFi, AWS and Snowflake functionalities like Snowpipe, Stream and Tasks. We will be using Docker Images of the required services to implement the project.  


## Architecture Diagram

![Architecture Diagram](https://raw.githubusercontent.com/vikash-singh-prac/Real-Time-Streaming-Using-Apache-Nifi-AWS-Snowpipe-Stream-and-Task-Using-NiFi-/dev/.misc/Architecture_Diagram.png)

### Folder Structure

C:.
|   README.md
|   
+---.misc
|       Architecture_Diagram.png
|       
+---Docker
|       Connected to Jupyter, Zookeeper, Nifi.png
|       Copy docker_exp folder with yaml file.png
|       Docker Compose Installation.png
|       Docker Compose pip package installation.png
|       Docker Installation.png
|       Docker-compose up.png
|       Jupyter Notebook Lanuched on EC2.png
|       New user.png
|       Nifi Launched on EC2.png
|       Python Installation.png
|       Required permissions to docker compose.png
|       Start docker.png
|       Update check.png
|       yaml file copied.png
|
+---EC2
|       AWS EC2_Setting_1.png
|       AWS EC2_Setting_2.png
|       EC2 Connection.png
|       Inbound Traffic Rules Update.png
|
+---file
|   \---docker_exp
|           docker-compose.yml
|
+---Jupyter Notebook
|       Data_Generation.ipynb
|       JupyterLab_Docker.png
|
+---Nifi
|       Accessing the data.png
|       Inside Nifi Docker Image.png
|       Nifi_Processor_Group.png
|       Settings_1.png
|       Settings_10.png
|       Settings_2.png
|       Settings_3.png
|       Settings_4.png
|       Settings_5.png
|       Settings_6.png
|       Settings_7.png
|       Settings_8.png
|       Settings_9.png
|
+---S3
|       Files_Uploaded_S3.png
|       S3 folder structure.png
|
\---Snowflake
        SCD1.sql

### Apache Nifi

##### What is Apache Nifi?
- A data integration tool 
- Created by National Security Agency (NSA) and later contributed to the Apache Software Foundation
- Provides a web based interface for designing, controlling and monitoring data flows 

##### Key Concepts:
- Flowfile: A basic unit of data in NiFi. It has content (actual data) and attributes (metadata)
- Processor: A node that performs an operation on a FlowFile e.g. fetching, transforming and routing data based on conditions
- Connection: Links processors together, allowing FlowFiles to move from one processor to another 
- Flow Controller: The brains of the operation, ensuring threads are allocated to tasks 
- Process Group: A sub group or a collection of processors and connections. Helps in orgninzing complex flows 

##### Why use NiFi:
- Visual Design: Drag and drop interface for designing data flows
- Scalability: Can handle large amounts of data and is horizantally scalable
- Flexiblity: Supports various data sources and destinations (e.g. databases, HTTP, FTP, Kafka, Hadoop)
- Data Provenance: Tracks data from its source to detination allowing for auditing and troubleshooting
- Extensibility: Custom processors can be developed if needed 


### Docker: 

##### Docker Images:
- Simple Explanation: It's like a blueprint or a recipe.
- Details: An image is a lightweight, stand-alone package that contains everything needed to run a piece of
  software, including the code, runtime, libraries, and other dependencies.

##### Docker Containers:
- Simple Explanation: This is like a software required to run the Docker Images. It's created from an image.
- Details: A container is a runnable instance of an image. You can think of it as the live version of the Docker image.

##### Docker Hub:
- Simple Explanation: It's like a library or store where people share their blueprints (images) so others can use or
modify them.
- Details: Docker Hub is a cloud-based registry where you can find and share container images with your team and
he Docker community.

### AWS EC2 (Elastic Compute Cloud):

##### EC2 Instances:

Simple Explanation: It's like renting a virtual computer on the cloud.
Details: EC2 (Elastic Compute Cloud) instances are virtual servers provided by Amazon Web Services (AWS). These instances allow users to run applications and services in the cloud, providing scalable compute capacity.

##### EC2 connection:
- Connection to EC2 instance done using SSH client
- Navigate to the folder having the .pem file with access keys 
- Copy and run the SSH client command from AWS
- Specifications:
    - t2.xlarge instance
    - 32GB of storage recommended
    - Allow ports 4000 - 38888
    - Connect to ec2 via ssh

### Snowflake:

##### What is Snowflake?

Snowflake is a cloud-based data warehousing platform designed to handle large volumes of data and enable efficient analytics.

##### Key Features:

- Cloud-Native Architecture: Snowflake is built for the cloud, offering scalability, elasticity, and performance without the need for hardware procurement or management.
- Separation of Compute and Storage: Snowflake separates compute resources from storage, allowing users to scale each independently based on workload requirements.
- Multi-Cluster Shared Data Architecture (MPP): Snowflake employs a multi-cluster architecture to distribute and parallelize data processing, enabling fast query performance.
- Data Sharing: Snowflake allows users to securely share data across organizations or between different accounts within Snowflake, facilitating collaboration and data monetization.
- Automatic Management: Snowflake handles tasks such as infrastructure provisioning, software updates, and performance optimization automatically, reducing administrative overhead.
- Native Support for Semi-Structured Data: Snowflake natively supports semi-structured data formats like JSON, Avro, and Parquet, enabling flexibility in data ingestion and analysis.
- Built-in Security and Compliance: Snowflake provides robust security features such as encryption, access controls, and audit logging to ensure data protection and regulatory compliance.

##### Why Use Snowflake?

- Scalability: Snowflake can effortlessly scale to accommodate growing data volumes and user concurrency.
- Performance: Its architecture enables high-performance analytics and query processing, even with large datasets.
- Ease of Use: Snowflake's intuitive interface and SQL-based query language make it easy for users to get started with data analytics.
- Cost-Effectiveness: With pay-as-you-go pricing and the ability to scale resources as needed, Snowflake offers cost-effective data warehousing solutions.
- Data Sharing: Snowflake's data sharing capabilities facilitate collaboration and data exchange across organizational boundaries.









