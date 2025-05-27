## Folder Structure

- **aws_example**
  Sample Ingress resource described by AWS documentation https://aws.amazon.com/blogs/containers/exposing-kubernetes-applications-part-3-nginx-ingress-controller/

- **mynginx_echo**
  K8S objects for testing NGINX Ingress Controller with a simple echo service.

- **values.yml**  
  Helm overriding file for deploying the ingress-nginx controller with external load balancer. See
  https://aws.amazon.com/blogs/containers/exposing-kubernetes-applications-part-3-nginx-ingress-controller/ about
  the usage.