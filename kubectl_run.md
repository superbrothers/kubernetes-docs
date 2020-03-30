## kubectl run

Run a particular image on the cluster

### Synopsis

Create and run a particular image in a pod.

```
kubectl run NAME --image=image [--env="key=value"] [--port=port] [--dry-run=server|client] [--overrides=inline-json] [--command] -- [COMMAND] [args...]
```

### Examples

```
  # Start a nginx pod.
  kubectl run nginx --image=nginx
  
  # Start a hazelcast pod and let the container expose port 5701.
  kubectl run hazelcast --image=hazelcast/hazelcast --port=5701
  
  # Start a hazelcast pod and set environment variables "DNS_DOMAIN=cluster" and "POD_NAMESPACE=default" in the container.
  kubectl run hazelcast --image=hazelcast/hazelcast --env="DNS_DOMAIN=cluster" --env="POD_NAMESPACE=default"
  
  # Start a hazelcast pod and set labels "app=hazelcast" and "env=prod" in the container.
  kubectl run hazelcast --image=hazelcast/hazelcast --labels="app=hazelcast,env=prod"
  
  # Dry run. Print the corresponding API objects without creating them.
  kubectl run nginx --image=nginx --dry-run=client
  
  # Start a nginx pod, but overload the spec with a partial set of values parsed from JSON.
  kubectl run nginx --image=nginx --overrides='{ "apiVersion": "v1", "spec": { ... } }'
  
  # Start a busybox pod and keep it in the foreground, don't restart it if it exits.
  kubectl run -i -t busybox --image=busybox --restart=Never
  
  # Start the nginx pod using the default command, but use custom arguments (arg1 .. argN) for that command.
  kubectl run nginx --image=nginx -- <arg1> <arg2> ... <argN>
  
  # Start the nginx pod using a different command and custom arguments.
  kubectl run nginx --image=nginx --command -- <cmd> <arg1> ... <argN>
```

### Options

```
      --allow-missing-template-keys    If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats. (default true)
      --attach                         If true, wait for the Pod to start running, and then attach to the Pod as if 'kubectl attach ...' were called.  Default false, unless '-i/--stdin' is set, in which case the default is true. With '--restart=Never' the exit code of the container process is returned.
      --cascade                        If true, cascade the deletion of the resources managed by this resource (e.g. Pods created by a ReplicationController).  Default true. (default true)
      --command                        If true and extra arguments are present, use them as the 'command' field in the container, rather than the 'args' field which is the default.
      --dry-run string[="unchanged"]   Must be "none", "server", or "client". If client strategy, only print the object that would be sent, without sending it. If server strategy, submit server-side request without persisting the resource. (default "none")
      --env stringArray                Environment variables to set in the container.
      --expose                         If true, service is created for the container(s) which are run
  -f, --filename strings               to use to replace the resource.
      --force                          If true, immediately remove resources from API and bypass graceful deletion. Note that immediate deletion of some resources may result in inconsistency or data loss and requires confirmation.
      --grace-period int               Period of time in seconds given to the resource to terminate gracefully. Ignored if negative. Set to 1 for immediate shutdown. Can only be set to 0 when --force is true (force deletion). (default -1)
  -h, --help                           help for run
      --hostport int                   The host port mapping for the container port. To demonstrate a single-machine container. (default -1)
      --image string                   The image for the container to run.
      --image-pull-policy string       The image pull policy for the container. If left empty, this value will not be specified by the client and defaulted by the server
  -k, --kustomize string               Process a kustomization directory. This flag can't be used together with -f or -R.
  -l, --labels string                  Comma separated labels to apply to the pod(s). Will override previous values.
      --leave-stdin-open               If the pod is started in interactive mode or with stdin, leave stdin open after the first attach completes. By default, stdin will be closed after the first attach completes.
      --limits string                  The resource requirement limits for this container.  For example, 'cpu=200m,memory=512Mi'.  Note that server side components may assign limits depending on the server configuration, such as limit ranges.
  -o, --output string                  Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-file.
      --overrides string               An inline JSON override for the generated object. If this is non-empty, it is used to override the generated object. Requires that the object supply a valid apiVersion field.
      --pod-running-timeout duration   The length of time (like 5s, 2m, or 3h, higher than zero) to wait until at least one pod is running (default 1m0s)
      --port string                    The port that this container exposes.
      --quiet                          If true, suppress prompt messages.
      --record                         Record current kubectl command in the resource annotation. If set to false, do not record the command. If set to true, record the command. If not set, default to updating the existing annotation value only if one already exists.
  -R, --recursive                      Process the directory used in -f, --filename recursively. Useful when you want to manage related manifests organized within the same directory.
      --requests string                The resource requirement requests for this container.  For example, 'cpu=100m,memory=256Mi'.  Note that server side components may assign requests depending on the server configuration, such as limit ranges.
      --restart Never                  The restart policy for this Pod.  Legal values [Always, OnFailure, Never].  If set to 'Always' a deployment is created, if set to 'OnFailure' a job is created, if set to 'Never', a regular pod is created. For the latter two --replicas must be 1.  Default 'Always', for CronJobs Never. (default "Always")
      --rm                             If true, delete resources created in this command for attached containers.
      --save-config                    If true, the configuration of current object will be saved in its annotation. Otherwise, the annotation will be unchanged. This flag is useful when you want to perform kubectl apply on this object in the future.
      --serviceaccount string          Service account to set in the pod spec.
  -i, --stdin                          Keep stdin open on the container(s) in the pod, even if nothing is attached.
      --template string                Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview].
      --timeout duration               The length of time to wait before giving up on a delete, zero means determine a timeout from the size of the object
  -t, --tty                            Allocated a TTY for each container in the pod.
      --wait                           If true, wait for resources to be gone before returning. This waits for finalizers.
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

* [kubectl](kubectl.md)	 - kubectl controls the Kubernetes cluster manager

