import 'package:flutter/material.dart';
import 'package:shopping_app/widgets/support_widgets.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 219, 219),
      body: Container(
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 20.0),
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.arrow_back_ios_new_outlined),
                  ),
                ),
                Center(
                  child: Image.asset(
                    "assets/images/headphone2.png",
                    height: 300.0,
                    width: 300.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Headphone",
                          style: SupportWidget.boldTextStyle(),
                        ),
                        Text(
                          "\$100",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "Details",
                      style: SupportWidget.semiBoldTextStyle(),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "These headphones are highly regarded for their blend of sound quality, comfort, noise-canceling capabilities, and smart features, making them a standout choice in the premium segment.",
                      style: SupportWidget.lightTextStyle(),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                        child: Text(
                          "Buy Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
