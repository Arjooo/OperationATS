import 'dart:ui';

import 'package:ats/screens/signup.dart';
import 'package:ats/user/UserModule.dart';
import 'package:flutter/material.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  final formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController userPasswordController = TextEditingController();
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.navigate_before),
          color: const Color.fromARGB(255, 0, 0, 0),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 40,
                      fontStyle: FontStyle.normal,
                      color: Color.fromARGB(255, 22, 1, 59)),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Welcome back Nigga!',
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontFamily: 'poppins',
                    fontSize: 13.5,
                  ),
                ),
                //
                //
                const SizedBox(
                  height: 100.0,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: const EdgeInsets.symmetric(
                      // horizontal: MediaQuery.of(context).size.width * 0.07,
                      ),
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: const Color.fromARGB(255, 245, 245, 245),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Email';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        labelText: 'Email',
                        hintText: 'Enter your Email',
                        hintStyle:
                            TextStyle(color: Color.fromARGB(255, 49, 48, 48)),
                      ),
                      style: const TextStyle(
                          color: Color.fromARGB(255, 49, 48, 48)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 245, 245, 245),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextFormField(
                      controller: userPasswordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter Password';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 49, 48, 48)),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                obscurePassword = !obscurePassword;
                              },
                            );
                          },
                          child: Icon(
                            obscurePassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: const Color.fromARGB(255, 91, 90, 90),
                          ),
                        ),
                      ),
                      style: const TextStyle(color: Colors.black),
                      obscureText: obscurePassword,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const UserModule();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 100),
                        backgroundColor: const Color.fromARGB(255, 9, 2, 65),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1000),
                        )),
                    child: const Text(
                      'Login',
                      style:
                          TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                //
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const SignUp();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 96),
                        backgroundColor:
                            const Color.fromARGB(255, 255, 255, 255),
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        )),
                    child: const Text(
                      'SignUp',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => const UserModule()));
          //   },
          // child: Container(
          //   width: 290,
          //   height: 50,
          //   decoration: ShapeDecoration(
          //     color: const Color.fromARGB(255, 21, 172, 21),
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(1000),
          //     ),
          //   ),
          //   child: const Center(
          //       child: Text(
          //     "Login",
          //       selectionColor: Color.fromARGB(255, 255, 255, 255),
          //     )),
          //   ),
          // ),
          // GestureDetector(
          //   onTap: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => const SignUp()));
          //   },
          //   child: Padding(
          //     padding: const EdgeInsets.all(10.0),
          //     child: ElevatedButton(
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //             builder: (context) {
          //               return const SignUp();
          //             },
          //           ),
          //         );
          //       },
          //       child: Container(
          //         width: 300,
          //         height: 50,
          //         decoration: ShapeDecoration(
          // shape: RoundedRectangleBorder(
          //                               borderRadius: BorderRadius.circular(10))),
          //                       child: const Center(
          //                         child: Text("Sign Up"),
          //                       ),
          //                     ),
          //                   ),
        ),
      ),
    );
  }
}
