import 'package:flutter/material.dart';
import 'package:food_app/pages/signup_page.dart';
import 'package:food_app/widgets/widget_support.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color(0xffff5c30),
                Color(0xffe74b1a),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight))),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 3,
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: const Text(""),
          ),
          Container(
            margin: const EdgeInsets.only(top: 60, left: 20, right: 20),
            child: Column(
              children: [
                Center(
                    child: Image.asset("images/logo.png",
                        width: MediaQuery.of(context).size.width / 1.5,
                        fit: BoxFit.fill)),
                const SizedBox(
                  height: 50,
                ),
                Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Login",
                          style: AppWiget.HeadLineTextFeildStyle(),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: AppWiget.semiBoldTextFeildStyle(),
                              prefixIcon: const Icon(
                                Icons.email_outlined,
                                color: Colors.black,
                              )),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: AppWiget.semiBoldTextFeildStyle(),
                              prefixIcon: const Icon(
                                Icons.lock_outline,
                                color: Colors.black,
                              )),
                          obscureText: true,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Text("Forgot Password?",
                              style: AppWiget.semiBoldTextFeildStyle()),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: 200,
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            decoration: BoxDecoration(
                                color: const Color(0xffff5c30),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Center(
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignupPage()));
                  },
                  child: Text("Don't have an account? Sign Up",
                      style: AppWiget.semiBoldTextFeildStyle()),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
