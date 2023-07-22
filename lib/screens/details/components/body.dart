import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../models/product.dart';
import 'color_and_size.dart';


class DetailsBody extends StatelessWidget {
  final index;

  DetailsBody({
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return BodyTopSession(index: index);
  }
}

class BodyTopSession extends StatefulWidget {
  BodyTopSession({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State<BodyTopSession> createState() => _BodyTopSessionState();
}

class _BodyTopSessionState extends State<BodyTopSession> {

  int itemsCount = 1;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 450,
            padding: EdgeInsets.only(top: 70, left: 20),
            //margin:EdgeInsets.only(top: MediaQuery.of(context).size.height*0.3),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              children: [
                ColorAndSize(),
                SizedBox(height: 20),
                Text(
                  dummyText,
                  style: TextStyle(fontSize: 16, letterSpacing: 1),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Row(
                     children: [
                       GestureDetector(
                         onTap: () {
                           setState(() {
                             if (itemsCount < 10) {
                               itemsCount++;
                             }
                           });
                         },
                         child: Container(
                           width: 30,
                           height: 30,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               border: Border.all(color: Colors.grey)),
                           child: Icon(CupertinoIcons.add),
                         ),
                       ),
                       SizedBox(
                         width: 10,
                       ),
                       Text(
                         '$itemsCount',
                         style: TextStyle(fontSize: 20),
                       ),
                       SizedBox(
                         width: 10,
                       ),
                       GestureDetector(
                         onTap: () {
                           setState(() {
                             if (itemsCount > 1) {
                               itemsCount--;
                             }
                           });
                         },
                         child: Container(
                           width: 30,
                           height: 30,
                           decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                               border: Border.all(color: Colors.grey)),
                           child: Icon(CupertinoIcons.minus),
                         ),
                       ),
                     ],
                   ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      padding: EdgeInsets.all(8),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle
                      ),
                      child: SvgPicture.asset('assets/icons/heart.svg'),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(9),
                      width: 60,
                      height: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.circular(10) 
                      ),
                      child: SvgPicture.asset('assets/icons/add_to_cart.svg'),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      // padding: EdgeInsets.symmetric(horizontal: 100),
                      width: 260,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFF3D82AE),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text('BUY NOW', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                children: [
                  Text(
                    "Aristocratic Hand Bag",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    products[widget.index].title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(text: " price\n"),
                  TextSpan(
                      text: '\$${products[widget.index].price}',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ])),
                Image.asset(
                  products[widget.index].image,
                  scale: products[widget.index].size,
                  // fit: BoxFit.fitWidth,
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
