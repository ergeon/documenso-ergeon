SHELL := /bin/bash

DOCUMENSO_VERSION := v2.20.0
DOCUMENSO_COMMIT := 38ecb217effcc53a7164d7123c51336f636bd3b2
DOCUMENSO_REPO := https://github.com/documenso/documenso.git

PLATFORM ?= linux/amd64
IMAGE ?= documenso-ergeon:$(DOCUMENSO_VERSION)
SRC := .build/documenso

.PHONY: source docker-build clean

source:
	rm -rf $(SRC)
	git -c advice.detachedHead=false clone --quiet --depth 1 --branch $(DOCUMENSO_VERSION) $(DOCUMENSO_REPO) $(SRC)
	test "$$(git -C $(SRC) rev-parse HEAD)" = "$(DOCUMENSO_COMMIT)"
	git -C $(SRC) apply --verbose $(CURDIR)/patches/*.patch
	cp public/* $(SRC)/apps/remix/public/

docker-build: source
	docker build --platform $(PLATFORM) -f $(SRC)/docker/Dockerfile -t $(IMAGE) $(SRC)

clean:
	rm -rf .build
