# Kubia - Kubernetes in action sample project

## Requirements
* Docker
* Minikube
* Kubectl

## Setup
1. Build docker image

    ```docker build -t kubia .```

2. Assign another tag to the image

    ```docker tag kubia <username>/kubia```

3. Push image to repository

    ```docker push <username>/kubia```

## Create pod
1. Create Kubernetes pod from YAML file
    
    ```kubectl create -f kubia-manual.yaml``` 

2. Get full pod descriptor in YAML
    
    ```kubectl get pod kubia-manual -o yaml``` 

3. Get full pod descriptor in JSON
    
    ```kubectl get pod kubia-manual -o json``` 

4. Get pods
    
    ```kubectl get pods``` 

5. Get pod's log (if single container in pod)
    
    ```kubectl logs kubia-manual```

6. Get pod's logs (if multiple containers in pod)
    
    ```kubectl logs kubia-manual -c kubia```

7. Setup port forwarding from local machine port to the pod
    
    ```kubectl port-forward kubia-manual 8888:8080```

8. Test port forwarding
    
    ```curl localhost:8888```

## Labels
1. Create pods with labels
    
    ```kubectl create -f kubia-manual-with-labels.yaml```

2. Get pods with labels
    
    ```kubectl get pods --show-labels```

3. Get pods and show specified labels in columns
    
    ```kubectl get pods -L creation_method,env```

4. Add label on existing pod
    
    ```kubectl label pod kubia-manual creation_method=manual```

5. Change existing label on pod
    
    ```kubectl label pod kubia-manual-v2 env=debug --overwrite```

6. See label changes
    
    ```kubectl get pods -L creation_method,env```

7. List pods using a label selector 
    
    ```kubectl get pods -l creation_method=manual```

8. List pods that include env label (regardless of its value)
    
    ```kubectl get pods -l env```

9. List pods that don't have env label (use single quotes)
    
    ```kubectl get pods -l '!env'```

10. List pods that include a label with one of provided values
    
    ```kubectl get pods -l 'env in (prod,devel)'```

11. List pods that don't include a label with any of provided values
    
    ```kubectl get pods -l 'env notin (prod,devel)'```

12. List pods that have a label with creation_method other than manual
    
    ```kubectl get pods -l 'creation_method != manual'```

13. Multiple label selectors
    
    ```kubectl get pods -l 'creation_method=manual,env=debug'```

## Nodes
1. Get nodes

    ```kubectl get nodes```

2. Apply label to node

    ```kubectl label node <nodeName> <label>```

    ```kubectl label node minikube gpu=true```
    
3. List only nodes with specific label
    
    ```kubectl get nodes -l <label>```
    
    ```kubectl get nodes -l gpu=true```
    
