# ITI Graduation Project

## the tools we used to build this infrastructure 

1- Terraform

2- Docker

3- Jenkins

4- Kubernetes

## Deploy backend application on kubernetes cluster using CI/CD  jenkins pipeline 
1. Implement secure Kubernetes cluster
2. Deploy and configure Jenkins on Kubernetes.
3. Deploy backend application on Kubernetes using Jenkins pipeline
![Screenshot from 2022-11-01 16-15-14](https://user-images.githubusercontent.com/111524157/199254549-866e427b-b1a0-4a50-8145-ffeecc2776e5.png)
 


## provision infrastructure using terraform

One VPC with two private subnets

Management subnet

nat and route to acess it to the internet -Private VM (bastion) to access GKE cluster
-firewall to allow ssh 2. Restricted subnet •  mangment subnet (private control plan)

### Provisioning
terraform init
terraform appy

 ![image](https://user-images.githubusercontent.com/105854314/199911665-eab81bfe-cca2-462e-bca0-6b71593ba596.png)
## connect vm  and config cluster
 ![image](https://github.com/AhmedMagdy2511/ITI-Final-project/blob/master/screenshot/ssh-connection.png)
 ![image](https://github.com/AhmedMagdy2511/ITI-Final-project/blob/master/screenshot/connect%20cluster.png)
## Install kubctl in vm instance

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version --client
kubectl version --client --output=yaml

## Let’s deploy kubernetes yaml files

kubectl create namespace jenkins-ns1
kubectl config set-context --current –namespace=jenkins
kubectl create -f deployment.yaml
kubectl create -f jenkins-service.yml.yaml
![image](https://user-images.githubusercontent.com/105854314/199916072-20cc1279-1a61-45d6-96cc-bf309f53bb74.png)


![image](https://user-images.githubusercontent.com/105854314/199916252-9b6b7afe-7fd6-4b85-80ad-33e51cad3e35.png)



## Jenkins link : http://34.123.234.234:8080

![image](https://user-images.githubusercontent.com/105854314/199916459-3409791b-08af-4e4f-b117-b57a24732166.png)


## create credentials for dockerhub

![image](https://user-images.githubusercontent.com/105854314/199916710-70291f91-0e08-4961-82a8-64492a5d7aa1.png)

### Pipline automated successfully
![image](https://user-images.githubusercontent.com/105854314/199916956-3fff7473-7f3b-405d-b095-4abed3170bf9.png)

![image](https://user-images.githubusercontent.com/105854314/199917225-7547a8bb-d048-4d0d-ae35-d4000545f3e0.png)




## Get IP:Port for the application
![image](https://user-images.githubusercontent.com/105854314/199917445-4360d3ab-b43f-4594-9708-158c7442bfac.png)

## Finallyyyyyy
## App link: http://34.122.129.157:3000

![image](https://user-images.githubusercontent.com/105854314/199917690-688564e6-6c8e-4102-aca9-2056b0856abb.png)





