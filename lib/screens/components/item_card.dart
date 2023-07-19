import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/product.dart';

class ItemCard extends StatelessWidget {
  final Product? product;
  final Function() press;
  const ItemCard({
    super.key,
    this.product,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              // fixed height and width for demo
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: product?.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${product?.id}",
                child: Image.asset(product!.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              product!.title, // products is demo list
              style: TextStyle(
                color: kTextLightColor,
              ),
            ),
          ),
          Text(
            "\$${product?.price}",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
