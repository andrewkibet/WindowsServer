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

