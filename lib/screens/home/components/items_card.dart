import 'package:flutter/material.dart';

import '../../../models/product.dart';
import '../../details/details_screen.dart';
class Items extends StatelessWidget {
final index;
// final Function press;
  const Items({
    this.index,
    // required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          // onTap: press,
          onTap: ()=>Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => DetailsScreen(
          index: index,
        ))),
          child: Container(
            padding: EdgeInsets.all(10),
            // width: 160,
            // height: 180,
            decoration: BoxDecoration(
                color: products[index].color,
                borderRadius: BorderRadius.circular(20)

            ),
            child: Image.asset(products[index].image),
          ),
        ),
        SizedBox(height: 4,),
        Text(products[index].title, style: TextStyle(fontSize: 15, color: Colors.grey),),
        Text('\$${products[index].price}', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
      ],
    );
  }
}
