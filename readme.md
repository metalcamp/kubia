# Kubia - Kubernetes in action sample project

### Commands
1. Build docker image
```docker build -t kubia .```
2. Assign another tag to the image
```docker tag kubia <username>/kubia```
3. Push image to repository
```docker push <username>/kubia```
4. Create Kubernetes pod from YAML file
```kubectl create -f kubia-manual.yaml``` 
5. Get full pod descriptor in YAML
```kubectl get pod kubia-manual -o yaml``` 
6. Get full pod descriptor in JSON
```kubectl get pod kubia-manual -o json``` 
7. Get pods
```kubectl get pods``` 
