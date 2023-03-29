import 'package:e_commerce/models/Products.dart';
import 'package:e_commerce/screen/home/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:e_commerce/constants.dart';

class HomeScreen extends StatelessWidget {


  //final String backName = "assets/icon/back.svg";
  //final String searchName = "assets/icon/search.svg";
  //final String cartName = "assets/icon/cart.svg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),


      
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      
      leading: 
        IconButton(
          icon: SvgPicture.asset("assets/icon/back.svg"),
          onPressed: (){},
      ),

      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icon/search.svg",
          color: kTextColor,),
          onPressed: (){},
      ),

        IconButton(
          icon: SvgPicture.asset("assets/icon/cart.svg",
          color: kTextColor,),
          onPressed: (){},
      ),

      SizedBox(width: kDefaultPadding / 2,)

      ]



    );
  }
}