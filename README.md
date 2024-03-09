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


