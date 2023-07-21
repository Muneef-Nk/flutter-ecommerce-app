import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  List categories=['Hand Bag','Jewellery', 'Footwear', 'Dresses','Watches'];
  int selectedIndex=0;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
          itemBuilder: (context, index){
          return buildText(index) ;
          }
      ),
    );
  }

  Widget buildText(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex=index;
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(categories[index],
              style: TextStyle(color:selectedIndex==index? Colors.black:Colors.grey[400], fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 2,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: 30,
              height: 2,
              color:selectedIndex==index? Colors.black:Colors.transparent,
            ),
          )
        ],
      ),
    );
  }


}
