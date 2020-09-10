#Provision GKE via terrafrom


This repo is to Provision a GKE Private Cluster learn guide, containing Terraform configuration files to provision an GKE Private cluster on GCP.

##Implementation
1. Created New VPC
2. Created Sub-network with CIDR
3. Created Continer Cluster with default node pool which deletes once provision is done
4. Provision seperate work-node pool with autoscaling min.1 to max.3 using t2-medium machine type
5. Deploy Cloud NAT_GW which is attached to Router and which is again attach to work-nodes to download stuffs from Internet.
6. MOST-IMPORTANT- Make sure you have setup gcloud on workstation and using that configuration which will help terraform to talk to google APIs


##Install and configure GCloud
First, install the Google Cloud CLI and initialize it.
```
$ gcloud init
```
Once you've initialized gcloud (signed in, selected project), add your account to the Application Default Credentials (ADC). This will allow Terraform to access these credentials to provision resources on GCloud.
```
$ gcloud auth application-default login
```

###Lets initialize Terraform workspace and provision GKE Cluster

```
$terraform init
$terraform apply 

```
