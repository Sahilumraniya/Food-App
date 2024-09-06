import 'package:flutter/material.dart';
import 'package:food_app/components/build_dot.dart';
import 'package:food_app/pages/signup_page.dart';
import 'package:food_app/widgets/content_model.dart';
import 'package:food_app/widgets/widget_support.dart';

class OnboardPages extends StatefulWidget {
  const OnboardPages({super.key});

  @override
  State<OnboardPages> createState() => _OnboardPagesState();
}

class _OnboardPagesState extends State<OnboardPages> {
  int currentIndex = 0;

  late PageController pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: pageController,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Image.asset(
                          contents[i].imageUrl,
                          height: 470,
                          width: MediaQuery.of(context).size.width / 1.5,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(contents[i].title,
                            style: AppWiget.semiBoldTextFeildStyle()),
                        SizedBox(
                          height: 10,
                        ),
                        Text(contents[i].description,
                            style: AppWiget.LightTextFeildStyle())
                      ],
                    ),
                  );
                }),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(contents.length,
                  (index) => buildDot(index, context, currentIndex)),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (currentIndex == contents.length - 1) {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (_) => SignupPage()));
              } else {
                pageController.nextPage(
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.bounceIn);
              }
            },
            child: Container(
              height: 70,
              width: double.maxFinite,
              margin: EdgeInsets.all(40),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Center(
                child: Text(
                  currentIndex == contents.length - 1 ? "Start" : "Next",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
