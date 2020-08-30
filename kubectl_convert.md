## kubectl convert

Convert config files between different API versions

### Synopsis

Convert config files between different API versions. Both YAML and JSON formats are accepted.

 The command takes filename, directory, or URL as input, and convert it into format of version specified by --output-version flag. If target version is not specified or not supported, convert to latest version.

 The default output will be printed to stdout in YAML format. One can use -o option to change to output destination.

```
kubectl convert -f FILENAME
```

### Examples

```
  # Convert 'pod.yaml' to latest version and print to stdout.
  kubectl convert -f pod.yaml
  
  # Convert the live state of the resource specified by 'pod.yaml' to the latest version
  # and print to stdout in JSON format.
  kubectl convert -f pod.yaml --local -o json
  
  # Convert all files under current directory to latest version and create them all.
  kubectl convert -f . | kubectl create -f -
```

### Options

```
      --allow-missing-template-keys   If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats. (default true)
  -f, --filename strings              Filename, directory, or URL to files to need to get converted.
  -h, --help                          help for convert
  -k, --kustomize string              Process the kustomization directory. This flag can't be used together with -f or -R.
      --local                         If true, convert will NOT try to contact api-server but run locally. (default true)
  -o, --output string                 Output format. One of: json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file. (default "yaml")
      --output-version string         Output the formatted object with the given group version (for ex: 'extensions/v1beta1').
  -R, --recursive                     Process the directory used in -f, --filename recursively. Useful when you want to manage related manifests organized within the same directory.
      --template string               Template string or path to template file to use when -o=go-template, -o=go-template-file. The template format is golang templates [http://golang.org/pkg/text/template/#pkg-overview].
      --validate                      If true, use a schema to validate the input before sending it (default true)
```

### Options inherited from parent commands

```
      --as string                      Username to impersonate for the operation
      --as-group stringArray           Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
      --cache-dir string               Default cache directory (default "/root/.kube/cache")
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
      --warnings-as-errors             Treat warnings received from the server as errors and exit with a non-zero exit code
```

### SEE ALSO

* [kubectl](kubectl.md)	 - kubectl controls the Kubernetes cluster manager

