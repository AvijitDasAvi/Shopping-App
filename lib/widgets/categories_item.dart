import 'package:flutter/material.dart';

class CategoriesItem extends StatelessWidget {
  final String image;
  CategoriesItem({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            image,
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 5.0,
          ),
          Icon(Icons.arrow_forward),
        ],
      ),
    );
  }
}
