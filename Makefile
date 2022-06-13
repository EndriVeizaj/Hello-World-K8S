pods:
	kubectl get pods

resources:
	kubectl get all

delete:
	kubectl delete deployment flaskapp-deployment

scale:
	kubectl scale deployment flaskapp-deployment --replicas= 5

forward:
	kubectl port-forward svc/flaskapp-service 8080:5002

all:
	kubectl apply -f magic_things.yaml

get_deployment:
	kubectl get deployment -l app=flaskapp
