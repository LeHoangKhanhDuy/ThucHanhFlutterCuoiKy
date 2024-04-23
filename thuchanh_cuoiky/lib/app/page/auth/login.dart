import 'package:iconsax/iconsax.dart';
import 'package:thuchanh_cuoiky/app/config/const.dart';
import 'package:thuchanh_cuoiky/app/data/api.dart';
import 'package:thuchanh_cuoiky/app/page/auth/testRegister.dart';
import 'package:thuchanh_cuoiky/mainpage.dart';

import 'package:flutter/material.dart';
import '../../data/sharepre.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController accountController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  login() async {
    //lấy token (lưu share_preference)
    String token = await APIRepository()
        .login(accountController.text, passwordController.text);
    var user = await APIRepository().current(token);
    // save share
    saveUser(user);
    //
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Mainpage()));
    return token;
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text("Login"),
    //   ),
    //   body: SingleChildScrollView(
    //     child: Container(
    //       alignment: Alignment.center,
    //       child: Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: Center(
    //           child: Column(
    //             children: [
    //               Image.asset(
    //                 urlLogo,
    //                 errorBuilder: (context, error, stackTrace) =>
    //                     const Icon(Icons.image),
    //               ),
    //               const Text(
    //                 "LOGIN INFORMATION",
    //                 style: TextStyle(fontSize: 24, color: Colors.blue),
    //               ),
    //               TextFormField(
    //                 controller: accountController,
    //                 decoration: const InputDecoration(
    //                   labelText: "Account",
    //                   icon: Icon(Icons.person),
    //                 ),
    //               ),
    //               const SizedBox(height: 16),
    //               TextFormField(
    //                 controller: passwordController,
    //                 obscureText: true,
    //                 decoration: const InputDecoration(
    //                   labelText: "Password",
    //                   icon: Icon(Icons.password),
    //                 ),
    //               ),
    //               const SizedBox(height: 10),
    //               Row(
    //                 children: [
    //                   Expanded(
    //                       child: ElevatedButton(
    //                     onPressed: login,
    //                     child: const Text("Login"),
    //                   )),
    //                   const SizedBox(
    //                     width: 16,
    //                   ),
    //                   Expanded(
    //                       child: OutlinedButton(
    //                     onPressed: () {
    //                       Navigator.push(
    //                           context,
    //                           MaterialPageRoute(
    //                               builder: (context) => const Register()));
    //                     },
    //                     child: const Text("Register"),
    //                   ))
    //                 ],
    //               )
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // );
    return Scaffold(
      body: Stack(
        children: [
          const Image(
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            image: AssetImage('assets/images/123.jpg'),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.black.withOpacity(0.8),
                  Colors.black.withOpacity(0.15),
                  Colors.black.withOpacity(0.5),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  urlLogo,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.image),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: accountController,
                    decoration: const InputDecoration(
                      hintText: 'Enter account ID',
                      label: Text(
                        'Account',
                        style: TextStyle(color: Color(0xFF61677A)),
                      ),
                      prefixIcon: Icon(Iconsax.user),
                      fillColor: Color(0xffD8D8DD),
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      hintText: 'Enter your password',
                      label: Text(
                        'Password',
                        style: TextStyle(color: Color(0xFF61677A)),
                      ),
                      prefixIcon: Icon(Iconsax.password_check),
                      suffixIcon: Icon(Icons.visibility_off),
                      fillColor: Color(0xffD8D8DD),
                      filled: true,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, top: 8, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Nho MK
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (value) {}),
                          const Text(
                            "Remember me",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      //Quen MK
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot Password',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: login,
                  child: Container(
                    height: 60,
                    width: 460,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white, // Use white for better contrast
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TestRegisterScreen()));
                  },
                  child: Container(
                    height: 60,
                    width: 460,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Colors.white),
                    ),
                    child: const Center(
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 150.0, top: 30),
                  child: Row(
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Signup",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
