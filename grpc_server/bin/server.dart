import 'dart:async';
import 'dart:convert';
import 'package:grpc/grpc.dart';
import 'package:grpc_server/grpc_server.dart';

class ShoppingCartService extends ShoppingCartServiceBase {
  Set<String> fontFamilies = {};
  StreamController<ShoppingCartReply> replyStream =
      StreamController.broadcast();
  @override
  Future<AddReply> add(ServiceCall call, AddRequest request) async {
    print('Adding ${request.fontFamily}');
    fontFamilies.add(request.fontFamily);
    print('Font families in cart: ${fontFamilies.join(', ')}');
    final reply = ShoppingCartReply()..fontFamilies.addAll(fontFamilies);
    print(json.encode(reply.toProto3Json()));
    replyStream.add(reply);
    return AddReply();
  }

  @override
  Future<RemoveReply> remove(ServiceCall call, RemoveRequest request) async {
    print('Removing ${request.fontFamily}');
    fontFamilies.remove(request.fontFamily);
    print('Font families in cart: ${fontFamilies.join(', ')}');
    final reply = ShoppingCartReply()..fontFamilies.addAll(fontFamilies);
    print(json.encode(reply.toProto3Json()));
    replyStream.add(reply);
    return RemoveReply();
  }

  @override
  Stream<ShoppingCartReply> shoppingCart(
      ServiceCall call, ShoppingCartRequest request) {
    Future(() {
      final reply = ShoppingCartReply()..fontFamilies.addAll(fontFamilies);
      print(json.encode(reply.toProto3Json()));
      replyStream.add(reply);
    });
    return replyStream.stream;
  }
}

Future<void> main(List<String> args) async {
  final server = Server([ShoppingCartService()]);
  await server.serve(port: 9090);
  print('Server listening on port ${server.port}...');
}
