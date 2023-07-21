import 'package:flutter/material.dart';

import '../../../models/product.dart';
class Items extends StatelessWidget {

  const Items({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          // width: 160,
          // height: 180,
          decoration: BoxDecoration(
              color: products[0].color,
              borderRadius: BorderRadius.circular(20)

          ),
          child: Image.asset(products[0].image),
        ),
        SizedBox(height: 4,),
        Text(products[2].title, style: TextStyle(fontSize: 15, color: Colors.grey),),
        Text('\$${products[0].price}', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
      ],
    );
  }
}
