// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ffi';

import 'package:e_commerce/constants.dart';
import 'package:e_commerce/screen/details/components/body.dart';
import 'package:flutter/material.dart';

import 'package:e_commerce/models/Products.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsScreen extends StatelessWidget {
  
  final Product product;
  
  const DetailsScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,

      appBar: buildAppBar(context),

      body: Body(product: product),





    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,

      leading: IconButton(
        icon: SvgPicture.asset("assets/icon/back.svg", color: Colors.white,),
        onPressed: () => Navigator.pop(context),
        ),
      
      actions:[
        IconButton(
          icon: SvgPicture.asset("assets/icon/search.svg", color: Colors.white,),
          onPressed: () {}, 
        ),

        IconButton(
          icon: SvgPicture.asset("assets/icon/cart.svg", color: Colors.white,),
          onPressed: () {}, 
        ),

        SizedBox(width: kDefaultPadding / 2)

      ],

    );
  }
}
