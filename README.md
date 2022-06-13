# Hello-World-in-Kubernetes

## List all pods
`kubectl get pods`<br>
or<br>
`make pods`

## List all the resources
`kubectl get all`<br>
or<br>
`make resources`

## Delete a deployment
`kubectl delete deployment flaskapp-deployment`<br>
or<br>
`make delete`

## Scale a deployment
`kubectl scale deployment flaskapp-deployment --replicas=5`<br>
or<br>
`make scale`

## Port Forwarding a deployment
`kubectl port-forwarding svc/flaskapp-service`<br>
or<br>
`make forward`

## Create/Update a deployment
`kubectl apply -f magic_things.yaml`<br>
or<br>
`make all`
	
##