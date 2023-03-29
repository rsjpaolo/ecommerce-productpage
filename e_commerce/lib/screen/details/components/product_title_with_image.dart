// ignore_for_file: prefer_const_constructors

import 'package:e_commerce/constants.dart';
import 'package:e_commerce/models/Products.dart';
import 'package:flutter/material.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Aristocrastic Hand Bag",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title, 
            style: Theme.of(context)
            .textTheme
            .headline4
            ?.copyWith(
              color: Colors.white, 
              fontWeight: FontWeight.bold)
            ),

            SizedBox(height: kDefaultPadding),
            Row(
              children: [
                RichText(text: TextSpan(
                  children: [
                    TextSpan(text: "Price "),
                    TextSpan(text: "\$${product.price}",
                    style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                ),
                SizedBox(width: kDefaultPadding),
                Expanded(
                  child: Hero(
                    tag: "${product.id}",
                    child: Image.asset(product.image,
                    fit: BoxFit.fitWidth,
                    ),
                  ),
                ),

              ],
            ),

        ],
      ),
    );
  }
}
