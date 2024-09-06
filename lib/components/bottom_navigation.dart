import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_app/pages/home_page.dart';
import 'package:food_app/pages/order_pages.dart';
import 'package:food_app/pages/profile_pages.dart';
import 'package:food_app/pages/wallet_pages.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;

  late List<Widget> pages;
  late HomePage homePage;
  late OrderPage orderPage;
  late WalletPage walletPage;
  late ProfilePage profilePage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    homePage = HomePage();
    orderPage = OrderPage();
    walletPage = WalletPage();
    profilePage = ProfilePage();

    pages = [homePage, orderPage, walletPage, profilePage];

    currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor:Colors.white,
        color:Colors.black,
        animationDuration: const Duration(milliseconds: 200),
        animationCurve: Curves.easeInOut,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          Icon(
            Icons.home_outlined,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.shopping_bag_outlined,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.wallet_outlined,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          )
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
