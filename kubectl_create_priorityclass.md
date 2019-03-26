## kubectl create priorityclass

Create a priorityclass with the specified name.

### Synopsis

Create a priorityclass with the specified name, value, globalDefault and description

```
kubectl create priorityclass NAME --value=VALUE --global-default=BOOL [--dry-run]
```

### Examples

```
  # Create a priorityclass named high-priority
  kubectl create priorityclass high-priority --value=1000 --description="high priority"
  
  # Create a priorityclass named default-priority that considered as the global default priority
  kubectl create priorityclass default-priority --value=1000 --global-default=true --description="default priority"
```

### Options

```
      --allow-missing-template-keys   If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats. (default true)
      --description string            description is an arbitrary string that usually provides guidelines on when this priority class should be used.
      --dry-run                       If true, only print the object that would be sent, without sending it.
      --generator string              The name of the API generator to use. (default "priorityclass/v1alpha1")
      --global-default                global-default specifies whether this PriorityClass should be considered as the default priority.
  -h, --help                          help for priorityclass
  -o, --output string                 Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-file.
      --save-config                   If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future.
      --template string               Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview].
      --validate                      If true, use a schema to validate the input before sending it (default true)
      --value int32                   the value of this priority class.
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

* [kubectl create](kubectl_create.md)	 - Create a resource from a file or from stdin.
