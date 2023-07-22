import 'package:flutter/material.dart';

import 'circle_container.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Color', style: TextStyle(fontSize: 14, ),),
              SizedBox(height: 3,),
              Row(
                children: [
                  CircleContainer(color: Color(0xFF3D82AE),),
                  CircleContainer(color: Color(0xFFF8C078)),
                  CircleContainer(color:Color.fromARGB(255, 21, 181, 61),),
                ],
              )
            ],
          ),
        ),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Size', style: TextStyle(fontSize: 14, ),),
              Text('12 CM', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),

            ],
          ),
        )
      ],
    );
  }
}
