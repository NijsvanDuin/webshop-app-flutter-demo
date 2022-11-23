import 'package:flutter/material.dart';
import 'package:nijs_webshop/pages/products_overview_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      darkTheme: ThemeData.dark(),
      home: ProductOverviewPage(),
    );
  }
}
