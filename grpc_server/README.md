A gRPC server for holding font family shopping cart state.

See [Dart gRPC Quick Start](https://grpc.io/docs/languages/dart/quickstart/) for more detail.

To regenerate protos:

```bash
$ protoc --dart_out=grpc:lib/src/generated -Iprotos protos/shoppingcart.proto
```