import 'package:flutter/material.dart';

import '../routes/route.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool tapped = false;
  final _formKey = GlobalKey<FormState>();
  clickedBtn(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        tapped = true;
      });
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushNamed(context, MyRoutes.home_page);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Login Page")),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/loginIng.png",
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 25.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: "Enter Username",
                          labelText: "Username",
                        ),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty..";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password",
                        ),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return "Passowrd cannot be empty..";
                          } else if (value.length < 5) {
                            return "Password cannot be less than 5 characters...";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Material(
                        // ripple effect
                        borderRadius: BorderRadius.circular(tapped ? 50 : 8),
                        color: Colors.deepPurple,
                        child: InkWell(
                          onTap: () => clickedBtn(context),
                          child: AnimatedContainer(
                              duration: Duration(seconds: 1),
                              width: tapped ? 40 : 150,
                              height: 40,
                              alignment: Alignment.center,
                              child: tapped
                                  ? Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    )
                                  : Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    )),
                        ),
                      )
                      // ElevatedButton(
                      //   onPressed: () {
                      //     // print("Hi ");
                      //     // Navigator.push(context, "/home");
                      //     Navigator.pushNamed(context, MyRoutes.home_page);
                      //   },
                      //   child: Text("Login"),
                      //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                      // )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
