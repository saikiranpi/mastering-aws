run aws configure 

#usr/local/bin
##Kubectl
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
chmod 700 /usr/local/bin/kubectl
kubectl version

#usr/local/bin

##Download eksctl
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s | tr '[:upper:]' '[:lower:]')_amd64.tar.gz" | tar xz -C /tmp
sudo chmod +x /usr/local/bin/eksctl
eksctl version

https://documentation.sisense.com/latest/linux/prepeks.htm#gsc.tab=0
## aws configure
aws configure
AWS_REGION=$(aws configure get region)
AWS_REGION=us-east-1


eksctl create cluster \
--name "first-k8s-cluster" \
--version 1.30  \
--zones=us-east-1a,us-east-1b,us-east-1c \
--without-nodegroup


eksctl utils associate-iam-oidc-provider \
	--region us-east-1 \
	--cluster first-k8s-cluster \
	--approve
aws eks describe-cluster --name first-k8s-cluster --query cluster.identity.oidc.issuer --output text

#For Node Group In Public Subnet
eksctl create nodegroup --cluster=first-k8s-cluster \
                   	--region=us-east-1 \
                   	--name=first-k8s-cluster-ng-1 \
                   	--node-type=t3.medium \
                   	--nodes=2 \
                   	--nodes-min=2 \
                   	--nodes-max=4 \
                   	--node-volume-size=20 \
                   	--ssh-access \
                   	--ssh-public-key=LatestPEM \
                   	--managed \
                   	--asg-access \
                   	--external-dns-access \
                   	--full-ecr-access \
                   	--appmesh-access \
                   	--alb-ingress-access

#For Node Group In Private
eksctl create nodegroup --cluster=first-k8s-cluster \
                   	--region=us-east-1 \
                   	--name=first-k8s-cluster-ng-1 \
                   	--node-type=t3.medium \
                   	--nodes=2 \
                   	--nodes-min=2 \
                   	--nodes-max=4 \
                   	--node-volume-size=20 \
                   	--ssh-access \
                   	--ssh-public-key=LatestPEM \
                   	--managed \
                   	--asg-access \
                   	--external-dns-access \
                   	--full-ecr-access \
                   	--appmesh-access \
                   	--alb-ingress-access                	 
                  	 
                  	 
# List EKS Clusters
eksctl get clusters

# Capture Node Group name
eksctl get nodegroup --cluster=<clusterName>

# Delete Node Group
eksctl delete nodegroup --cluster=first-k8s-cluster --name=first-k8s-cluster-ng-1

# Delete Cluster
eksctl delete cluster --name=first-k8s-cluster


apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx-deployment
  labels:
    app: nginx
spec:
  replicas: 3
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: sreeutils
        image: sreeharshav/utils
        ports:
        - containerPort: 8888
        
---
apiVersion: v1
kind: Service
metadata:
  labels:
    app: nginx
  annotations:
    service.beta.kubernetes.io/aws-load-balancer-type: nlb
  name: nginx-deployment
spec:
  ports:
  - port: 80
    protocol: TCP
    targetPort: 8888
  selector:
    app: nginx
  type: LoadBalancer


https://raw.githubusercontent.com/kubernetes-sigs/aws-load-balancer-controller/v2.1.3/docs/examples/2048/2048_full.yaml  
---
apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  name: ingress-2048
  annotations:
	kubernetes.io/ingress.class: alb
	alb.ingress.kubernetes.io/scheme: internet-facing
	alb.ingress.kubernetes.io/target-type: ip
spec:
  rules:
	- http:
    	paths:
      	- path: /*
        	backend:
          	serviceName: nginx
          	servicePort: 80
