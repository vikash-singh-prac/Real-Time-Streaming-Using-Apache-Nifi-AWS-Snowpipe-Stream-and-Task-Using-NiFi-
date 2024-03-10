# Real-Time-Streaming-Using-Apache-Nifi-AWS-Snowpipe-Stream-and-Task-Using-NiFi-
The project is aimed to stream data in real time using Apache NiFi, AWS and Snowflake functionalities like Snowpipe, Stream and Tasks. We will be using Docker Images of the required services to implement the project.  


## Architecture Diagram

![Architecture Diagram](https://raw.githubusercontent.com/vikash-singh-prac/Real-Time-Streaming-Using-Apache-Nifi-AWS-Snowpipe-Stream-and-Task-Using-NiFi-/dev/.misc/Architecture_Diagram.png)

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

    







