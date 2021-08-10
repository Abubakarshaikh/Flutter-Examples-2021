import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbootcamp/ShoppingCart/cart/cart.dart';
import 'package:flutterbootcamp/ShoppingCart/catalog/catalog.dart';
import 'package:flutterbootcamp/ShoppingCart/shopping_repository.dart';

class ShoppingCart extends StatelessWidget {
  static const routeKey = "ShoppingCart";
  const ShoppingCart({Key? key, required this.shoppingRepository}) : super(key: key);

  final ShoppingRepository shoppingRepository;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => CatalogBloc(
            shoppingRepository: shoppingRepository,
          )..add(CatalogStarted()),
        ),
        BlocProvider(
          create: (_) => CartBloc(
            shoppingRepository: shoppingRepository,
          )..add(CartStarted()),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Bloc Shopping Cart',
        initialRoute: '/',
        routes: {
          '/': (_) => CatalogPage(),
          '/cart': (_) => CartPage(),
        },
      ),
    );
  }
}
