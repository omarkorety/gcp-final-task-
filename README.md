# gcp-final-task


## Tools
- Terraform
- Google Cloud Platform (GCP)

# Deploy Hellowworld application on kubernetes cluster

## Infrastructure for my project using terraform
Decribe instructions for initiate the project
```bash
terraform init 
terraform validate #to make sure there no syntax errors
terraform plan #to make sure everything will be created
terraform graph | dot -Tsvg > graph.svg
terraform apply #to apply my infrastructure on cloud provider 
```
![graph](https://user-images.githubusercontent.com/29188579/202702266-b86fc464-6ab5-424c-8784-762aec830eb0.svg)

Deploy and configure the application on the created K8s cluster 

## Build the app and redis then push them to GCR

Build image for the app using Dockerfile by
```bash
docker build -t gcp-app .
docker tag gcp-app gcr.io/omars-project-367822/gcp-app
docker  push gcr.io/omars-project-367822/gcp-app
```
Build image for jenkins using Dockerfile by
```bash
docker build -t gcp-app .
docker tag gcp-app gcr.io/omars-project-367822/gcp-app
docker  push gcr.io/omars-project-367822/gcp-app
```
![Screenshot from 2022-11-17 21-33-40](https://user-images.githubusercontent.com/29188579/202703195-5968099c-242c-43a2-a019-d9472c051b0f.png)

![Screenshot from 2022-11-17 20-25-57](https://user-images.githubusercontent.com/29188579/202702960-9e66945f-13d9-4ddd-be27-3199638bae20.png)

![Screenshot from 2022-11-17 21-34-04](https://user-images.githubusercontent.com/29188579/202703257-070db814-bb2e-4efb-a374-973766fc2ea8.png)


Dockerhub jenkins image repository: https://hub.docker.com/repository/docker/omarkorety/myjenkins

## Deploy jenkins and Loadbalancer service in cluster 

Build image for jenkins using Dockerfile by
```bash
kubectl create -f deployment.yaml
```
