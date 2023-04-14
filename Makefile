KUBERNETES_VERSION ?= v1.27.0
GO_VERSION ?= $(shell curl -s "https://raw.githubusercontent.com/kubernetes/kubernetes/${KUBERNETES_VERSION}/.go-version")

.PHONY: generate-docs
generate-docs: clean
	git clone -b docs git@github.com:superbrothers/kubectl-docs.git docs
	docker run \
		--init \
		-e KUBERNETES_VERSION=$(KUBERNETES_VERSION) \
		-v $(CURDIR)/docs:/output \
		-v $(CURDIR)/hack:/src/hack \
		-w /src \
		golang:$(GO_VERSION) \
		hack/generate-docs.sh

.PHONY: clean
clean:
	rm -rf docs
