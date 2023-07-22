import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../models/product.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  final index;

  const DetailsScreen({super.key, this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: products[index].color,
      appBar: buildAppBar(context),
      body:DetailsBody(index: index,)
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: products[index].color,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/search.svg',
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/add_to_cart.svg',
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
