## kubectl wait

Experimental: Wait for a specific condition on one or many resources.

### Synopsis

Experimental: Wait for a specific condition on one or many resources. 

The command takes multiple resources and waits until the specified condition is seen in the Status field of every given resource. 

Alternatively, the command can wait for the given set of resources to be deleted by providing the "delete" keyword as the value to the --for flag. 

A successful message will be printed to stdout indicating when the specified condition has been met. One can use -o option to change to output destination.

```
kubectl wait resource.group/name [--for=delete|--for condition=available]
```

### Examples

```
  # Wait for the pod "busybox1" to contain the status condition of type "Ready".
  kubectl wait --for=condition=Ready pod/busybox1
  
  # Wait for the pod "busybox1" to be deleted, with a timeout of 60s, after having issued the "delete" command.
  kubectl delete pod/busybox1
  kubectl wait --for=delete pod/busybox1 --timeout=60s
```

### Options

```
      --all-namespaces                If present, list the requested object(s) across all namespaces. Namespace in current context is ignored even if specified with --namespace.
      --allow-missing-template-keys   If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats. (default true)
  -f, --filename strings              identifying the resource.
      --for string                    The condition to wait on: [delete|condition=condition-name].
  -h, --help                          help for wait
  -o, --output string                 Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-file.
  -R, --recursive                     Process the directory used in -f, --filename recursively. Useful when you want to manage related manifests organized within the same directory. (default true)
  -l, --selector string               Selector (label query) to filter on, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)
      --template string               Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview].
      --timeout duration              The length of time to wait before giving up.  Zero means check once and don't wait, negative means wait for a week. (default 30s)
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
      --profile string                 Name of profile to capture. One of (none|cpu|heap|goroutine|threadcreate|block|mutex) (default "none")
      --profile-output string          Name of the file to write the profile to (default "profile.pprof")
      --request-timeout string         The length of time to wait before giving up on a single server request. Non-zero values should contain a corresponding time unit (e.g. 1s, 2m, 3h). A value of zero means don't timeout requests. (default "0")
  -s, --server string                  The address and port of the Kubernetes API server
      --token string                   Bearer token for authentication to the API server
      --user string                    The name of the kubeconfig user to use
```

### SEE ALSO

* [kubectl](kubectl.md)	 - kubectl controls the Kubernetes cluster manager

