import 'package:flutter/material.dart';
import 'package:shopping_ap_ui/pages/cart_page.dart';
import 'package:shopping_ap_ui/pages/home_page.dart';
import 'package:shopping_ap_ui/pages/product_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/cart_page':(context)=> const CartPage(),
        '/product_detail_page':(context)=> const ProductDetail(),
      },
      initialRoute: '/',
    );
  }
}
