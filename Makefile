include .env

create-eks:
	eksctl create cluster --name ${EKS_CLUSTER_NAME} --region ${EKS_REGION} --nodegroup-name ${EKS_NODEGROUP_NAME} --spot --node-type ${EKS_NODETYPE} --nodes ${EKS_NODE_NUMBER} --nodes-min ${EKS_NODE_MIN} --nodes-max ${EKS_NODE_MAX}
