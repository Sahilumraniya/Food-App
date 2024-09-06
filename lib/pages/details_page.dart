import 'package:flutter/material.dart';
import 'package:food_app/widgets/widget_support.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.only(top: 40, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios)),
              Image.asset(
                "images/salad2.png",
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mediterranean",
                            style: AppWiget.semiBoldTextFeildStyle()),
                        Text(
                          "Chickpea Salad",
                          style: AppWiget.boldTextFeildStyle(),
                        )
                      ],
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            if (count > 1) {
                              count--;
                            }
                          });
                        },
                        icon: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      count.toString(),
                      style: AppWiget.semiBoldTextFeildStyle(),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            count++;
                          });
                        },
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                  "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut",
                  style: AppWiget.LightTextFeildStyle()),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text(
                    "Delivery Time",
                    style: AppWiget.semiBoldTextFeildStyle(),
                  ),
                  Spacer(),
                  Icon(
                    Icons.alarm,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("25 min", style: AppWiget.semiBoldTextFeildStyle())
                ],
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Price",
                          style: AppWiget.semiBoldTextFeildStyle(),
                        ),
                        Text(
                          "\₹ 250",
                          style: AppWiget.HeadLineTextFeildStyle(),
                        )
                      ],
                    ),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Add to Cart",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: "Poppins",
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),
                        ),
                      ]),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
