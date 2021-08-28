KUBERNETES_VERSION ?= v1.22.0
GO_VERSION ?= 1.16

.PHONY: generate-docs
generate-docs: clean
	git clone -b docs git@github.com:superbrothers/kubectl-docs.git docs
	docker run \
		--init \
		-e KUBERNETES_VERSION=$(KUBERNETES_VERSION) \
		-v $(shell pwd)/docs:/output \
		-v $(shell pwd)/hack:/src/hack \
		-w /src \
		golang:$(GO_VERSION) \
		hack/generate-docs.sh

.PHONY: clean
clean:
	rm -rf docs
