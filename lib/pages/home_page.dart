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
      body: SingleChildScrollView(
        child: Container(
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
                      color: Colors.redAccent,
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
                  Container(
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.only(right: 20.0),
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Center(
                      child: Text(
                        "All",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
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
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All Products",
                    style: SupportWidget.semiBoldTextStyle(),
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 190.0,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/headphone2.png",
                            height: 115.0,
                            width: 115.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "Headphone",
                            style: SupportWidget.semiBoldTextStyle(),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$100",
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 25.0,
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/watch.png",
                            height: 115.0,
                            width: 115.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "Apple Watch",
                            style: SupportWidget.semiBoldTextStyle(),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$150",
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 25.0,
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/laptop.png",
                            height: 115.0,
                            width: 115.0,
                            fit: BoxFit.contain,
                          ),
                          Text(
                            "Laptop",
                            style: SupportWidget.semiBoldTextStyle(),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$520",
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 25.0,
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/tv.png",
                            height: 115.0,
                            width: 115.0,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "Television",
                            style: SupportWidget.semiBoldTextStyle(),
                          ),
                          Row(
                            children: [
                              Text(
                                "\$990",
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 25.0,
                              ),
                              Container(
                                padding: EdgeInsets.all(2.0),
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
