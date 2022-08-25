KUBERNETES_VERSION ?= v1.25.0
GO_VERSION ?= 1.19.0

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
