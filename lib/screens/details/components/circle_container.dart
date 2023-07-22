import 'package:flutter/material.dart';


class CircleContainer extends StatelessWidget {
  final Color color;
  const CircleContainer({
    super.key, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4, top: 2),
      padding: EdgeInsets.all(2.5),
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: color),
        // color: Color(0xFF3D82AE)
      ),
      //one method for create this
      child: DecoratedBox(
        decoration: BoxDecoration(
            color:color,
            shape: BoxShape.circle),
      ),
      // another method for create this
      // child: Container(
      //   decoration: BoxDecoration(
      //            color: Color(0xFF3D82AE),
      //          shape: BoxShape.circle
      //        ),
      //),
    );
  }
}
