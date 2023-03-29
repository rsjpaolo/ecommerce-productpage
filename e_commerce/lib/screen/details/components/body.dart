// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:io';

import 'package:e_commerce/screen/details/components/add_to_cart.dart';
import 'package:e_commerce/screen/details/components/color_and_size.dart';
import 'package:e_commerce/screen/details/components/description.dart';
import 'package:flutter/material.dart';

import 'package:e_commerce/constants.dart';
import 'package:e_commerce/models/Products.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'cart_counter.dart';
import 'counter_with_fave.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;
  //final IconData icon;
  //final Function press;

  const Body({
    Key? key,
    required this.product,
    //required this.icon,
    //required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12, 
                    left: kDefaultPadding, 
                    right:kDefaultPadding,
                  ),
                  //height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    )
                    ),
                    child: Column(
                      children: [ 
                        ColorAndSize(product: product),
                        Description(product: product),
                        SizedBox(height: kDefaultPadding / 2,),
                        counterWithFave(),
                        SizedBox(height: kDefaultPadding / 2,),
                        AddToCart(product: product)

                      ],
                    ),
              ),

              ProductTitleWithImage(product: product),

            ],
          )
          )
        ],
      ),
    );
  }
}














