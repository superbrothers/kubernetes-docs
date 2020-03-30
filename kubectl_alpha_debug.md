## kubectl alpha debug

Attach a debug container to a running pod

### Synopsis

Tools for debugging Kubernetes resources

```
kubectl alpha debug NAME --image=image [ -- COMMAND [args...] ]
```

### Examples

```
  # Create an interactive debugging session in pod mypod and immediately attach to it.
  # (requires the EphemeralContainers feature to be enabled in the cluster)
  kubectl alpha debug mypod -i --image=busybox
  
  # Create a debug container named debugger using a custom automated debugging image.
  # (requires the EphemeralContainers feature to be enabled in the cluster)
  kubectl alpha debug --image=myproj/debug-tools -c debugger mypod
```

### Options

```
      --arguments-only             If specified, everything after -- will be passed to the new container as Args instead of Command.
      --attach                     If true, wait for the Pod to start running, and then attach to the Pod as if 'kubectl attach ...' were called.  Default false, unless '-i/--stdin' is set, in which case the default is true.
      --container string           Container name to use for debug container.
      --env stringToString         Environment variables to set in the container. (default [])
  -h, --help                       help for debug
      --image string               Container image to use for debug container.
      --image-pull-policy string   The image pull policy for the container. (default "IfNotPresent")
      --quiet                      If true, suppress prompt messages.
  -i, --stdin                      Keep stdin open on the container(s) in the pod, even if nothing is attached.
      --target string              Target processes in this container name.
  -t, --tty                        Allocated a TTY for each container in the pod.
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
      --tls-server-name string         Server name to use for server certificate validation. If it is not provided, the hostname used to contact the server is used
      --token string                   Bearer token for authentication to the API server
      --user string                    The name of the kubeconfig user to use
      --username string                Username for basic authentication to the API server
```

### SEE ALSO

* [kubectl alpha](kubectl_alpha.md)	 - Commands for features in alpha

