# Real-Time-Streaming-Using-Apache-Nifi-AWS-Snowpipe-Stream-and-Task-Using-NiFi-
The project is aimed to stream data in real time using Apache NiFi, AWS and Snowflake functionalities like Snowpipe, Stream and Tasks. We will be using Docker Images of the required services to implement the project.  


## Architecture Diagram

![Architecture Diagram](https://raw.githubusercontent.com/vikash-singh-prac/Real-Time-Streaming-Using-Apache-Nifi-AWS-Snowpipe-Stream-and-Task-Using-NiFi-/dev/.misc/Architecture_Diagram.png)

### Folder Structure
```
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
        Data Loading.sql
        Event Notification_1.png
        Event Notification_2.png
        Merge update execution result.png
        Merge_first Execution result.png
        SCD1.sql
        SCD2.sql
        Table Creation.sql
```

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


### Steps for Execution:


##### EC2 connection:
- Connection to EC2 instance done using SSH client
- Navigate to the folder having the .pem file with access keys 
- Copy and run the SSH client command from AWS


Now that we have started the EC2 instance on our computer, we will install Docker on it:
1. To check and update the software
	sudo yum update -y
2. Install docker on the EC2 instance 
	sudo yum install docker 
3.  Install docker composer
	sudo curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
4. Execution permission to Docker Compose
	sudo chmod +x /usr/local/bin/docker-compose
	sudo gpasswd -a $USER docker
5. Create New user for Docker 
	newgrp docker
6. Installing pip python package 
	sudo yum install python-pip
7. Installing Docker compose pip package. This is used to create different fucntionalities defined in our .yml file. 
   The .yml file, usually named "docker-compose.yml", is used to configure the services, networks, and volumes needed for your application.  
	sudo pip install docker-compose
8. We will create the .yml file on our system and create the folder with the file onto the docker image 
  Copy files to EC2
	scp -r -i real_time_project.pem docker-exp  ec2-user@ec2-18-216-239-206.us-east-2.compute.amazonaws.com:/home/ec2-user/docker_exp
	scp -r -i <<your pem file name>.pem> <folder_name in which the .yml file is stored(please note this folder should be in the same folder as the .pem file)> <your ec2 instance name, can be found under Public IPv4 DNS>:/home/ec2-user/docker_exp(this folder is being created on the ec2 instance)

- Create your "docker-compose.yml" file and store it in a folder with the folder having .pem file 
- The above command copies the .yml file on the ec2 instance  
9. Now to check if Docker is installed 
	docker
10. To start Docker Container
	sudo systemctl start docker
11. To check if docker container has started 
	docker ps (Used to check the different images which are running on the EC2 machine)
12. Next Step is to pull all the images defined in the docker-compose.yml file 
13. Navigate to the docker_exp folder with the docker-compose.yml file and run the below command 
	docker-compose up
	This will start pulling images of the services listed in the .yml file 
14. We have to note that since we have given specific port numbers to access the services in the .yml file, we would need to update the security rules for inbound traffic. For that, go to EC2 instance and add inbound rules (refer to the scrrenshot). This is not the best practise
The best pratise would be to select the Custom TCP option and input the specific pot numbers as given in the .yml file 


15. Now go to the Public IPv4 address of your EC2 instance and to the specific ports for Jupyter Notebook and Nifi
	i.e. http://18.216.239.206:4888/ for Jupyter and http://18.216.239.206:2080/ for NiFi

16. Once we have Jupyter running, we will generate the fake data using Faker module of Python.

17. Now that we have the data generated, we will connect to EC2 instance in another command prompt tab (let the other services running in the initial tab).

18. If we do docker ps here, we have 3 images running for jupyterlab, nifi and zookeeper. Since we have them running we can now enter them individually adn do our work

19. To enter the nifi image we need to run the below command
	docker exec -i -t nifi bash --> this will take us inside the nifi image 

20. We need to navigate to the generated fake data file. 
	cd /opt/workspace/nifi/FakeDataset/


21. We will now configure the NiFi job: One processor group with ListFile processor --> FetchFile Processor --> PutS3Object

22. Configure the ListFile, FetchFile and PutS3Object
	- listfile: we need to provide the location of the generated file i.e. /opt/workspace/nifi/FakeDataset/
	- fetchfile: no need to configure this
	- puts3object: give the bucket name, folder name (object key), access keyid (create IAM user for this), access secret

23. Run the processor group to upload the files in the S3 bucket.

24. Moving to Snowflake, first create 3 tables: customer (update history), customer_history(scd2 with is_current key) and cusotmer_raw(raw new updates)

25. Create stream on the customer table

26. Create stage on the S3 bucket with all the files and file format for them

27. Now create Snowpipe on the stage to copy all the files into customer_raw table

28. Once we have the Snowpipe created, we will use its notification channel to create a event notification in AWS
	- configuration: name, prefix, event types, destination: SQS queue, Enter SQS ARN (copy paste the snowpipe notification channel)

29. Post this, we will have the data automatically loaded into the Snowflake customer table  

For the next stage we will try to handle any changes/updates(CDC) being done to the customer data 

30. To capture the incremental data, we will be using MERGE statements for upsert data (insert and update)
	- To understand this better, initially all the data which is inserted will be automatically stored in customer_raw table (data dump). This does not care about any updates being done
	- But to only store the incremental data i.e. updated or inserted or deleted we will use merge statement
	- Customer table is the one which will have all the good data with updated timestamp to show when was it updated  

31. To run this automate the process, we will create a procedure. However, we would still need to run it manually

32. To completely automate the process, we will use Tasks. But first we need to create few roles and provide the necessary permissions






