import 'package:e_commerce/constants.dart';
import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  //IconData icon;
  //Function press; 

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
          icon: Icons.remove,
          press: () {
            if (numOfItems > 1){
              setState(() {
                numOfItems--;
              });
            }
          },
        ),
        
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(numOfItems.toString().padLeft(2, "0"),
          style: Theme.of(context)
          .textTheme
          .headline6,),
        ),
        buildOutlineButton(
          icon: Icons.add, 
          press: () {
            setState(() {
              numOfItems++;
            });
          }),

      ],

    );
    
  }

  SizedBox buildOutlineButton({ required IconData icon, required VoidCallback press}) {
    //required this.icon,
    //required this.press,

    return SizedBox(
        width: 40,
        height: 32,
        child: OutlinedButton(
          
          style: OutlinedButton.styleFrom(
            //primary: Colors.white,
           // backgroundColor: Colors.teal,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
          ),
          ), 
          onPressed: press,
          child: Icon(icon),

        ),
      );
  }
}