import 'package:flutter/material.dart';
import 'package:food_app/pages/login_page.dart';
import 'package:food_app/widgets/widget_support.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String name = "", email = "", password = "";

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  // register() async {
  //   try {
  //     if (name.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
  //       UserCredential userCredential = await FirebaseAuth.instance
  //           .createUserWithEmailAndPassword(email: email, password: password);

  //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //           backgroundColor: Colors.green,
  //           content: Text(
  //             "Register Success",
  //             style: TextStyle(fontSize: 20),
  //           )));
  //     }
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == 'weak-password') {
  //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //           backgroundColor: Colors.orangeAccent,
  //           content: Text(
  //             "The password provided is too weak",
  //             style: TextStyle(fontSize: 20),
  //           )));
  //     } else if (e.code == 'email-already-in-use') {
  //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //           backgroundColor: Colors.orangeAccent,
  //           content: Text(
  //             "The account already exists for that email",
  //             style: TextStyle(fontSize: 20),
  //           )));
  //     } else if (e.code == 'invalid-email') {
  //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //           backgroundColor: Colors.orangeAccent,
  //           content: Text(
  //             "The email address is badly formatted",
  //             style: TextStyle(fontSize: 20),
  //           )));
  //     } else if (e.code == "email-already-in-use") {
  //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
  //           backgroundColor: Colors.orangeAccent,
  //           content: Text(
  //             "The email address is already in use by another account",
  //             style: TextStyle(fontSize: 20),
  //           )));
  //     }
  //   }
  // }

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
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Sign Up",
                            style: AppWiget.HeadLineTextFeildStyle(),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            controller: nameController,
                            validator: (value) => (value!.isEmpty)
                                ? "Please enter your name"
                                : null,
                            decoration: InputDecoration(
                                hintText: "Name",
                                hintStyle: AppWiget.semiBoldTextFeildStyle(),
                                prefixIcon: const Icon(
                                  Icons.person_outline,
                                  color: Colors.black,
                                )),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: emailController,
                            validator: (value) => (value!.isEmpty)
                                ? "Please enter your email"
                                : null,
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
                          TextFormField(
                            controller: passwordController,
                            validator: (value) => (value!.isEmpty)
                                ? "Please enter your password"
                                : null,
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
                                  "SIGN UP",
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
                ),
                const SizedBox(
                  height: 70,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  child: Text("Already have an account? Login",
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
