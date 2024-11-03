import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/categories_item.dart';
import 'package:shopping_app/widgets/support_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List categoriesItem = [
    "assets/images/television.png",
    "assets/images/laptop-screen.png",
    "assets/images/smartphone.png",
    "assets/images/headphones.png",
    "assets/images/smartwatch.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: Container(
        margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello, Avijit",
                      style: SupportWidget.boldTextStyle(),
                    ),
                    Text(
                      "Good Morning",
                      style: SupportWidget.lightTextStyle(),
                    ),
                  ],
                ),
                //For using picture border radius
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image.asset(
                    "assets/images/boy.jpg",
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Search Products",
                  hintStyle: SupportWidget.lightTextStyle(),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: SupportWidget.semiBoldTextStyle(),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),

            //For list of categories item
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 10.0),
                    height: 100.0,
                    child: ListView.builder(
                      itemCount: categoriesItem.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CategoriesItem(image: categoriesItem[index]);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
