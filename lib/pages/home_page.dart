import 'package:flutter/material.dart';
import 'package:food_app/components/food_menu.dart';
import 'package:food_app/pages/details_page.dart';
import 'package:food_app/widgets/widget_support.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // make a map for food menu
  Map<String, bool> foodmenu = {
    "iceCream": false,
    "pizza": false,
    "salad": false,
    "burger": false
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(top: 40, left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hello Sahil,",
                style: AppWiget.boldTextFeildStyle(),
              ),
              Container(
                margin: EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    )),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "Delicous Food",
            style: AppWiget.HeadLineTextFeildStyle(),
          ),
          Text(
            "Discover and Get Great Food",
            style: AppWiget.LightTextFeildStyle(),
          ),
          SizedBox(
            height: 20,
          ),
          foodMenu(foodmenu, setState),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card(
                  elevation: 8,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DetailsPage()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "images/salad2.png",
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            "Vagetable Salad",
                            style: AppWiget.semiBoldTextFeildStyle(),
                          ),
                          Text(
                            "Fresh Vagetable Salad",
                            style: AppWiget.LightTextFeildStyle(),
                          ),
                          Text(
                            "\₹250",
                            style: AppWiget.semiBoldTextFeildStyle(),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 7,
                ),
                Card(
                  elevation: 8,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "images/salad2.png",
                          height: 150,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                        Text(
                          "Mix Veg Sabji",
                          style: AppWiget.semiBoldTextFeildStyle(),
                        ),
                        Text(
                          "Fresh Mix Veg Sabji",
                          style: AppWiget.LightTextFeildStyle(),
                        ),
                        Text(
                          "\₹340",
                          style: AppWiget.semiBoldTextFeildStyle(),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Text(
              "Popular Food",
              style: AppWiget.semiBoldTextFeildStyle(),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: Text(
              "You can discover more food",
              style: AppWiget.LightTextFeildStyle(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(right: 15),
            child: Material(
              elevation: 8,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                child: Row(
                  children: [
                    Image.asset("images/salad2.png", height: 150, width: 150),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            "Mediterranean Chickpea Salad",
                            style: AppWiget.semiBoldTextFeildStyle(),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            "Fresh Vagetable Salad",
                            style: AppWiget.LightTextFeildStyle(),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "\₹250",
                          style: AppWiget.semiBoldTextFeildStyle(),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
