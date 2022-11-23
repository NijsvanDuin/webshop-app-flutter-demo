import 'package:flutter/material.dart';
import 'package:nijs_webshop/components/product_item.dart';
import 'package:nijs_webshop/models/product.dart';

class ProductOverviewPage extends StatefulWidget {
  const ProductOverviewPage({super.key});

  @override
  State<ProductOverviewPage> createState() => _ProductOverviewPageState();
}

class _ProductOverviewPageState extends State<ProductOverviewPage> {
  List<Product> loadedProduct = [
    Product(
      id: 'p1',
      title: 'Waltuh Shirt',
      description: 'A Waltuh shirt - I am the danger!',
      price: 39.99,
      imageUrl:
          'https://ih1.redbubble.net/image.3961648321.1475/ssrco,classic_tee,mens,101010:01c5ca27c6,front_alt,square_product,600x600.jpg',
    ),
    Product(
      id: 'p2',
      title: 'High Resolution Figure',
      description: 'Braking Bad Figure.',
      price: 79.99,
      imageUrl:
          'https://ae01.alicdn.com/kf/HTB1h7wOGVXXXXavXFXXq6xXFXXXz/222354502/HTB1h7wOGVXXXXavXFXXq6xXFXXXz.jpg',
    ),
    Product(
      id: 'p3',
      title: 'Saul Goodman',
      description: 'Saul Goodman figure.',
      price: 29.99,
      imageUrl: 'https://i.ebayimg.com/images/g/tYoAAOSwqExc0vt7/s-l640.jpg',
    ),
    Product(
      id: 'p4',
      title: 'Saul goodman Buisness Card',
      description: 'Dont drink and drive, but if you do: Better Call Saul.',
      price: 49.99,
      imageUrl:
          'https://kusinakulture.pl/wp-content/uploads/2015/02/better-cakk-saul.jpg',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Webshop Nijs'),
      ),
      backgroundColor: Colors.grey[400],
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: loadedProduct.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, i) => ProductItem(
            id: loadedProduct[i].id,
            title: loadedProduct[i].title,
            imageUrl: loadedProduct[i].imageUrl,
            description: loadedProduct[i].description,
          ),
        ),
      ),
    );
  }
}
