import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc_server/src/generated/shopping_cart.pbgrpc.dart';

class ShoppingCart {
  ShoppingCart() {
    for (var fontFamily in GoogleFonts.asMap().keys) {
      var valueNotifier = ValueNotifier(false);
      _cartItems[fontFamily] = valueNotifier;
      valueNotifier.addListener(() {
        _itemChanged(fontFamily);
      });
    }

    final channel = ClientChannel('localhost',
        port: 8001,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    client = ShoppingCartClient(channel);
    client.shoppingCart(voidNoParam()).listen((value) {
      var updatedCart = value.name;
      print(updatedCart);
      // for (var fontFamily in _cartItems.keys) {
      //   _cartItems[fontFamily].value = updatedCart.contains(fontFamily);
      // }
    });
  }

  ShoppingCartClient client;
  final Map<String, ValueNotifier<bool>> _cartItems = {};
  ValueNotifier<bool> operator [](String fontFamily) => _cartItems[fontFamily];
  void _itemChanged(String fontFamily) {
    print('Font family $fontFamily is now ${_cartItems[fontFamily].value}');
    if (_cartItems[fontFamily].value) {
      client.add(AddRequest()..fontFamily = fontFamily);
      print('add');
    } else {
      client.remove(RemoveRequest()..fontFamily = fontFamily);
    }
  }
}

void main() {
  runApp(
    Provider(
      create: (BuildContext context) => ShoppingCart(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Ya Olde Font Shoppe',
          style: GoogleFonts.architectsDaughter(
            textStyle: Theme.of(context).textTheme.headline5,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          var fontFamily = GoogleFonts.asMap().keys.toList()[index];
          return Consumer<ShoppingCart>(
            builder: (context, cart, _) => SampleText(
              fontFamily: fontFamily,
              addedToCart: cart[fontFamily],
            ),
          );
        },
        itemCount: GoogleFonts.asMap().length,
      ),
    );
  }
}

class SampleText extends StatelessWidget {
  const SampleText({
    @required this.fontFamily,
    @required this.addedToCart,
  });
  final String fontFamily;
  final ValueNotifier<bool> addedToCart;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        fontFamily,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.getFont(fontFamily,
            textStyle: Theme.of(context).textTheme.headline5,
            color: Colors.black),
      ),
      trailing: ValueListenableBuilder(
        valueListenable: addedToCart,
        builder: (context, value, _) => IconButton(
          icon: Icon(value ? Icons.done : Icons.add_shopping_cart),
          onPressed: () => addedToCart.value = !value,
        ),
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => FontDataPage(
            fontFamily: fontFamily,
            addedToCart: addedToCart,
          ),
        ));
      },
    );
  }
}

class FontDataPage extends StatelessWidget {
  const FontDataPage({@required this.fontFamily, @required this.addedToCart});
  final String fontFamily;
  final ValueNotifier<bool> addedToCart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          fontFamily,
          style: GoogleFonts.architectsDaughter(
            textStyle: Theme.of(context).textTheme.headline5,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'FontSizes',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    'headline2',
                    style: GoogleFonts.getFont(
                      fontFamily,
                      textStyle: Theme.of(context).textTheme.headline2,
                    ),
                  ),
                  Text(
                    'headline3',
                    style: GoogleFonts.getFont(
                      fontFamily,
                      textStyle: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                  Text(
                    'headline4',
                    style: GoogleFonts.getFont(
                      fontFamily,
                      textStyle: Theme.of(context).textTheme.headline4,
                    ),
                  ),
                  Text(
                    'headline5',
                    style: GoogleFonts.getFont(
                      fontFamily,
                      textStyle: Theme.of(context).textTheme.headline5,
                    ),
                  ),
                  Text(
                    'bodyText1',
                    style: GoogleFonts.getFont(
                      fontFamily,
                      textStyle: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Text(
                    'bodyText2',
                    style: GoogleFonts.getFont(
                      fontFamily,
                      textStyle: Theme.of(context).textTheme.bodyText2,
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'Font weights',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  for (var weight in [
                    FontWeight.w100,
                    FontWeight.w200,
                    FontWeight.w300,
                    FontWeight.w400,
                    FontWeight.w500,
                    FontWeight.w600,
                    FontWeight.w700,
                    FontWeight.w800,
                    FontWeight.w900,
                  ])
                    Text(
                      '$weight',
                      style: GoogleFonts.getFont(
                        fontFamily,
                        fontSize: 18,
                        fontWeight: weight,
                      ),
                    ),
                  SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                ValueListenableBuilder<bool>(
                  valueListenable: addedToCart,
                  builder: (context, value, _) => RaisedButton(
                    onPressed: () => addedToCart.value = !value,
                    child: Text(value ? 'Remove from Cart' : 'Add to Cart'),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
