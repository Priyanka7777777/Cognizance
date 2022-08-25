import 'package:flutter/material.dart';
import 'package:white_hats/Authentication/signin.dart';

import 'package:white_hats/Widgets/Constants.dart';

import 'package:firebase_auth/firebase_auth.dart';

import 'signin.dart';

class logIn extends StatefulWidget {
  const logIn({Key? key}) : super(key: key);

  @override
  State<logIn> createState() => _logInState();
}

class _logInState extends State<logIn> {
  bool _passwordVisible = true;
  bool isChecked = false;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose(){
  emailController.dispose();
  passwordController.dispose();

  super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Kblue1, Kblue2])),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: Column(children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Container(
                height: 61,
                width: 326,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ktile,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(ktile),
                              shadowColor: MaterialStateProperty.all(
                                  ktile.withOpacity(0.1))),
                          onPressed: (() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const signIn()),
                            );
                          }),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 30, right: 30, top: 10, bottom: 10),
                            child: Text(
                              "Sign In",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              gradient:
                                  LinearGradient(colors: [Kbtn1, Kbtn22])),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.transparent,
                              onSurface: Colors.transparent,
                              shadowColor: Colors.transparent,
                            ),
                            onPressed: (() {}),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 30, right: 30, top: 10, bottom: 10),
                              child: Text(
                                "Log In",
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                  height: 285,
                  width: 326,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ktile,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20.0, top: 20, bottom: 10),
                        child: Container(
                          height: 55,
                          width: 292,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 5),
                            child: TextField(

                              controller:emailController,
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                  ),
                                  hintText: "Email",
                                  hintStyle: TextStyle(color: Colors.white)),
                              obscureText: false,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 20.0,
                          right: 20.0,
                          top: 10,
                          bottom: 10,
                        ),
                        child: Container(
                          height: 55,
                          width: 292,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black,
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 5),
                            child: TextField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent),
                                  ),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _passwordVisible
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _passwordVisible = !_passwordVisible;
                                      });
                                    },
                                  ),
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.white)),
                              obscureText: _passwordVisible,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.transparent,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(colors: [Kbtn1, Kbtn22])),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            onSurface: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          onPressed: (() {}),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 100, right: 100, top: 15, bottom: 15),
                            child: Text(
                              "Log In",
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        height: 10,
                        color: Colors.transparent,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Forgot Password?",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ]),
      ),
    );
    Future signIn() async{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email:emailController.text.trim(),
        password:passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e){
      print(e);
    }
  }
}
