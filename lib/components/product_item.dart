import 'package:flutter/material.dart';
import 'package:nijs_webshop/pages/product_detail_page.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final String description;

  const ProductItem({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        leading: IconButton(
          tooltip: 'Add to favorite',
          onPressed: () {},
          icon: const Icon(Icons.favorite),
        ),
        trailing: IconButton(
          tooltip: 'Add to cart',
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart),
        ),
      ),
      // child: Tooltip(
      //   message: description,
      //   child: Image.network(
      //     imageUrl,
      //     fit: BoxFit.cover,
      //   ),
      // ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ProductDetailPage(
                title: title,
                description: description,
              ),
            ),
          );
        },
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
