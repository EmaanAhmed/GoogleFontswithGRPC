import 'package:grpc/grpc.dart';
import 'package:grpc/src/server/call.dart';

import 'src/generated/shopping_cart.pbgrpc.dart';

class ShoppingCartService extends ShoppingCartServiceBase {
  FontFamilies fontFamilies = new FontFamilies();

  @override
  Future<voidNoParam> add(ServiceCall call, AddRequest request) async {
    FontFamily fontFamily = new FontFamily();
    voidNoParam noParam = new voidNoParam();
    fontFamily.name = request.fontFamily;
    fontFamilies.fontFamilies.add(fontFamily);
    print('added');
    return noParam;
  }

  @override
  Future<voidNoParam> remove(ServiceCall call, RemoveRequest request) async {
    FontFamily fontFamily = new FontFamily();
    voidNoParam noParam = new voidNoParam();
    fontFamily.name = request.fontFamily;
    fontFamilies.fontFamilies.remove(fontFamily);
    return noParam;
  }

  @override
  Stream<FontFamily> shoppingCart(
      ServiceCall call, voidNoParam request) async* {
    for (var fontFamily in fontFamilies.fontFamilies) {
      yield fontFamily;
    }
  }
}

class ShoppingCartServer {
  Future<void> main(List<String> args) async {
    final server = Server([ShoppingCartService()]);
    await server.serve(port: 9000);
    print('Server listeing on port ${server.port}...');
  }
}

main() {
  ShoppingCartServer shoppingCartServer = new ShoppingCartServer();
  shoppingCartServer.main([]);
}
