import 'dart:async';
import 'dart:convert';
import 'package:grpc/grpc.dart';
import 'package:grpc_server/grpc_server.dart';

Future<void> main(List<String> args) async {
  final channel = ClientChannel(
    'localhost',
    port: 9090,
    options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
  final stub = ShoppingCartClient(channel);

  final stream = stub.shoppingCart(ShoppingCartRequest());
  final subscription = stream.listen((value) {
    print('ShoppingCart response: "${value.fontFamilies.join(',')}"');
    print(json.encode(value.toProto3Json()));
  });

  print('Adding a font to the shopping cart');
  await stub.add(AddRequest()..fontFamily = 'A-Font');
  print('Adding another font to the shopping cart');
  await stub.add(AddRequest()..fontFamily = 'Another-Font');

  print('Removing a font from the shopping cart');
  await stub.remove(RemoveRequest()..fontFamily = 'A-Font');
  print('Removing another font from the shopping cart');
  await stub.remove(RemoveRequest()..fontFamily = 'Another-Font');

  print('done');
  await subscription.cancel();
  await channel.shutdown();
}
