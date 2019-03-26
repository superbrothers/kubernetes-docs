## kubectl top pod

Display Resource (CPU/Memory/Storage) usage of pods

### Synopsis

Display Resource (CPU/Memory/Storage) usage of pods.

 The 'top pod' command allows you to see the resource consumption of pods.

 Due to the metrics pipeline delay, they may be unavailable for a few minutes since pod creation.

```
kubectl top pod [NAME | -l label]
```

### Examples

```
  # Show metrics for all pods in the default namespace
  kubectl top pod
  
  # Show metrics for all pods in the given namespace
  kubectl top pod --namespace=NAMESPACE
  
  # Show metrics for a given pod and its containers
  kubectl top pod POD_NAME --containers
  
  # Show metrics for the pods defined by label name=myLabel
  kubectl top pod -l name=myLabel
```

### Options

```
  -A, --all-namespaces              If present, list the requested object(s) across all namespaces. Namespace in current context is ignored even if specified with --namespace.
      --containers                  If present, print usage of containers within a pod.
      --heapster-namespace string   Namespace Heapster service is located in (default "kube-system")
      --heapster-port string        Port name in service to use
      --heapster-scheme string      Scheme (http or https) to connect to Heapster as (default "http")
      --heapster-service string     Name of Heapster service (default "heapster")
  -h, --help                        help for pod
      --no-headers                  If present, print output without headers.
  -l, --selector string             Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)
```

### Options inherited from parent commands

```
      --as string                      Username to impersonate for the operation
      --as-group stringArray           Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
      --cache-dir string               Default HTTP cache directory (default "/root/.kube/http-cache")
      --certificate-authority string   Path to a cert file for the certificate authority
      --client-certificate string      Path to a client certificate file for TLS
      --client-key string              Path to a client key file for TLS
      --cluster string                 The name of the kubeconfig cluster to use
      --context string                 The name of the kubeconfig context to use
      --insecure-skip-tls-verify       If true, the server's certificate will not be checked for validity. This will make your HTTPS connections insecure
      --kubeconfig string              Path to the kubeconfig file to use for CLI requests.
      --match-server-version           Require server version to match client version
  -n, --namespace string               If present, the namespace scope for this CLI request
      --password string                Password for basic authentication to the API server
      --profile string                 Name of profile to capture. One of (none|cpu|heap|goroutine|threadcreate|block|mutex) (default "none")
      --profile-output string          Name of the file to write the profile to (default "profile.pprof")
      --request-timeout string         The length of time to wait before giving up on a single server request. Non-zero values should contain a corresponding time unit (e.g. 1s, 2m, 3h). A value of zero means don't timeout requests. (default "0")
  -s, --server string                  The address and port of the Kubernetes API server
      --token string                   Bearer token for authentication to the API server
      --user string                    The name of the kubeconfig user to use
      --username string                Username for basic authentication to the API server
```

### SEE ALSO

* [kubectl top](kubectl_top.md)	 - Display Resource (CPU/Memory/Storage) usage.
