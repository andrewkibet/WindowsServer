# WindowsServer
This repository has the instructions of installing Windows Server in Virtual box. It also has the implementation of Network Load Balance.

**Network Load Balancer**
A Network Load Balancer (NLB) is a tool that distributes network traffic across multiple servers to improve performance, reliability, and scalability. It ensures no single server is overloaded, preventing downtime and improving response times.

## How to Use Network Load Balancer in Windows Server 2019
### Step 1: Install Network Load Balancing Feature
Open Server Manager.
Click Manage → Add Roles and Features.
Select Network Load Balancing (NLB) and install it.
### Step 2: Configure NLB Cluster
Open Network Load Balancing Manager (nlbmgr.exe).
Click Cluster → New and enter the IP of the first server.
Set a Cluster IP Address (this is the shared IP that clients will use).
Select Multicast or Unicast mode (Multicast is preferred).
Add the second server to the cluster.
Set up Port Rules to define which traffic is balanced.
### Step 3: Test the NLB Setup
Install IIS (Internet Information Services) on both servers.
Create a simple webpage (index.html) with different content on each server.
Open a browser and enter the Cluster IP – It should distribute traffic between servers.

## Benefits of migrating from a Classic Load Balancer
Using a Network Load Balancer instead of a Classic Load Balancer has the following benefits:

1. Ability to handle volatile workloads and scale to millions of requests per second.
2. Support for static IP addresses for the load balancer. You can also assign one Elastic IP address per subnet enabled for the load balancer.
3. Support for registering targets by IP address, including targets outside the VPC for the load balancer.
4. Support for routing requests to multiple applications on a single EC2 instance. You can register each instance or IP address with the same target group using multiple ports.
5. Support for containerized applications. Amazon Elastic Container Service (Amazon ECS) can select an unused port when scheduling a task and register the task with a target group using this port. This enables you to make efficient use of your clusters.
6. Support for monitoring the health of each service independently, as health checks are defined at the target group level and many Amazon CloudWatch metrics are reported at the target group level. Attaching a target group to an Auto Scaling group enables you to scale each service dynamically based on demand.

A cluster is a group of interconnected computers or servers that work together as a single system to improve performance, availability, and scalability. Clusters are commonly used in networking, cloud computing, and data centers to distribute workloads efficiently.

Types of Clusters
High-Availability (HA) Cluster – Ensures system uptime by automatically shifting workloads if one node fails.
Load Balancing Cluster – Distributes network traffic among multiple servers for efficiency.
Storage Cluster – Multiple servers store and manage data together (e.g., in cloud storage).
HPC Cluster (High-Performance Computing) – Used for computational tasks like simulations or AI processing.


