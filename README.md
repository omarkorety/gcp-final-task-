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
docker pull redis
docker tag redis gcr.io/omars-project-367822/redis
docker push gcr.io/omars-project-367822/redis
```
![Screenshot from 2022-11-17 21-33-40](https://user-images.githubusercontent.com/29188579/202703195-5968099c-242c-43a2-a019-d9472c051b0f.png)

![Screenshot from 2022-11-17 20-25-57](https://user-images.githubusercontent.com/29188579/202702960-9e66945f-13d9-4ddd-be27-3199638bae20.png)

![Screenshot from 2022-11-18 14-19-08](https://user-images.githubusercontent.com/29188579/202703605-64e7d3d1-a27a-47ea-b377-4d702fc532ae.png)

## The images pused to GCR

![Screenshot from 2022-11-18 14-14-09](https://user-images.githubusercontent.com/29188579/202703712-2f186678-7bd3-497b-8d78-82e04f73a37c.png)



## Deploy the app deployment and redis pod and Loadbalancer service in cluster 

Build image for jenkins using Dockerfile by
```bash
kubectl create namespace gcp-final-task
kubectl create -f app.yaml
kubectl create -f redis.yaml
```
