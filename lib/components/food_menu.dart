import 'package:flutter/material.dart';

Widget foodMenu(foodmenu,setState){
  return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  foodmenu.map((key, value) {
                    if (key == "iceCream") {
                      foodmenu[key] = !foodmenu[key]!;
                    } else {
                      foodmenu[key] = false;
                    }
                    return MapEntry(key, value);
                  });
                  setState(() {});
                },
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color:
                            foodmenu["iceCream"]! ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      "images/ice-cream.png",
                      height: 40,
                      width: 40,
                      color:
                          foodmenu["iceCream"]! ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    foodmenu.map((key, value) {
                      if (key == "pizza") {
                        foodmenu[key] = !foodmenu[key]!;
                      } else {
                        foodmenu[key] = false;
                      }
                      return MapEntry(key, value);
                    });
                  });
                },
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: foodmenu["pizza"]! ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(8),
                    child: Image.asset(
                      "images/pizza.png",
                      height: 40,
                      width: 40,
                      color: foodmenu["pizza"]! ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    foodmenu.map((key, value) {
                      if (key == "salad") {
                        foodmenu[key] = !foodmenu[key]!;
                      } else {
                        foodmenu[key] = false;
                      }
                      return MapEntry(key, value);
                    });
                  });
                },
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: foodmenu["salad"]! ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(8),
                    child: Image.asset(
                      "images/salad.png",
                      height: 40,
                      width: 40,
                      color: foodmenu["salad"]! ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    foodmenu.map((key, value) {
                      if (key == "burger") {
                        foodmenu[key] = !foodmenu[key]!;
                      } else {
                        foodmenu[key] = false;
                      }
                      return MapEntry(key, value);
                    });
                  });
                },
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    decoration: BoxDecoration(
                        color:
                            foodmenu["burger"]! ? Colors.black : Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.all(8),
                    child: Image.asset(
                      "images/burger.png",
                      height: 40,
                      width: 40,
                      color: foodmenu["burger"]! ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          );
}