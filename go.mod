module github.com/habakke/promtail-client

go 1.24

toolchain go1.24.1

require (
	github.com/golang/snappy v1.0.0
	golang.org/x/oauth2 v0.28.0
	google.golang.org/protobuf v1.36.6
)

require google.golang.org/grpc/cmd/protoc-gen-go-grpc v1.5.1 // indirect

tool google.golang.org/grpc/cmd/protoc-gen-go-grpc

tool google.golang.org/protobuf/cmd/protoc-gen-go
