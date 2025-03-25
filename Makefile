VERSION         := $(shell cat VERSION)

.PHONY: release

release:
	git tag -a $(VERSION) -m "Release" && git push origin $(VERSION)

logproto/logproto.pb.go: logproto/logproto.proto
	# brew install protobuf
	# go get -u google.golang.org/grpc
	# go get -u github.com/golang/protobuf/protoc-gen-go
	# go install google.golang.org/protobuf/cmd/protoc-gen-go
	# go get -u google.golang.org/grpc/cmd/protoc-gen-go-grpc
    # go install google.golang.org/grpc/cmd/protoc-gen-go-grpc
	protoc \
		--go_out=. \
		--go_opt=paths=source_relative \
		--go-grpc_out=. \
		--go-grpc_opt=paths=source_relative \
		$^