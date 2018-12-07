## kubectl set subject

Update User, Group or ServiceAccount in a RoleBinding/ClusterRoleBinding

### Synopsis

Update User, Group or ServiceAccount in a RoleBinding/ClusterRoleBinding.

```
kubectl set subject (-f FILENAME | TYPE NAME) [--user=username] [--group=groupname] [--serviceaccount=namespace:serviceaccountname] [--dry-run]
```

### Examples

```
  # Update a ClusterRoleBinding for serviceaccount1
  kubectl set subject clusterrolebinding admin --serviceaccount=namespace:serviceaccount1
  
  # Update a RoleBinding for user1, user2, and group1
  kubectl set subject rolebinding admin --user=user1 --user=user2 --group=group1
  
  # Print the result (in yaml format) of updating rolebinding subjects from a local, without hitting the server
  kubectl create rolebinding admin --role=admin --user=admin -o yaml --dry-run | kubectl set subject --local -f - --user=foo -o yaml
```

### Options

```
      --all                           Select all resources, including uninitialized ones, in the namespace of the specified resource types
      --allow-missing-template-keys   If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats. (default true)
      --dry-run                       If true, only print the object that would be sent, without sending it.
  -f, --filename strings              Filename, directory, or URL to files the resource to update the subjects
      --group stringArray             Groups to bind to the role
  -h, --help                          help for subject
      --include-uninitialized         If true, the kubectl command applies to uninitialized objects. If explicitly set to false, this flag overrides other flags that make the kubectl commands apply to uninitialized objects, e.g., "--all". Objects with empty metadata.initializers are regarded as initialized.
      --local                         If true, set subject will NOT contact api-server but run locally.
  -o, --output string                 Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-file.
  -R, --recursive                     Process the directory used in -f, --filename recursively. Useful when you want to manage related manifests organized within the same directory.
  -l, --selector string               Selector (label query) to filter on, not including uninitialized ones, supports '=', '==', and '!='.(e.g. -l key1=value1,key2=value2)
      --serviceaccount stringArray    Service accounts to bind to the role
      --template string               Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview].
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

* [kubectl set](kubectl_set.md)	 - Set specific features on objects

