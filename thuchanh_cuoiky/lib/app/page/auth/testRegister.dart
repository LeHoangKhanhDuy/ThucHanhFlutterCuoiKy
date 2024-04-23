import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:thuchanh_cuoiky/app/config/const.dart';

class TestRegisterScreen extends StatelessWidget {
  const TestRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
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
          SingleChildScrollView(
            child: Align(
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
                      // controller: accountController,
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
                      // controller: accountController,
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
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      // controller: accountController,
                      decoration: const InputDecoration(
                        hintText: 'Enter your password',
                        label: Text(
                          'Confirm Password',
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
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      // controller: accountController,
                      decoration: const InputDecoration(
                        hintText: 'Enter fullname',
                        label: Text(
                          'Full Name',
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
                      // controller: accountController,
                      decoration: const InputDecoration(
                        hintText: 'Enter number ID',
                        label: Text(
                          'Number ID',
                          style: TextStyle(color: Color(0xFF61677A)),
                        ),
                        prefixIcon: Icon(Iconsax.key),
                        fillColor: Color(0xffD8D8DD),
                        filled: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      // controller: accountController,
                      decoration: const InputDecoration(
                        hintText: 'Enter phone number',
                        label: Text(
                          'Phone Number',
                          style: TextStyle(color: Color(0xFF61677A)),
                        ),
                        prefixIcon: Icon(Iconsax.call),
                        fillColor: Color(0xffD8D8DD),
                        filled: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      // controller: accountController,
                      decoration: const InputDecoration(
                        hintText: 'Enter birthday',
                        label: Text(
                          'Birthday',
                          style: TextStyle(color: Color(0xFF61677A)),
                        ),
                        prefixIcon: Icon(Iconsax.cake),
                        fillColor: Color(0xffD8D8DD),
                        filled: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      // controller: accountController,
                      decoration: const InputDecoration(
                        hintText: 'Enter school year',
                        label: Text(
                          'School year',
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
                      // controller: accountController,
                      decoration: const InputDecoration(
                        hintText: 'Enter school key',
                        label: Text(
                          'School key',
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
                      // controller: accountController,
                      decoration: const InputDecoration(
                        hintText: 'Image URL',
                        label: Text(
                          'URL',
                          style: TextStyle(color: Color(0xFF61677A)),
                        ),
                        prefixIcon: Icon(Iconsax.image),
                        fillColor: Color(0xffD8D8DD),
                        filled: true,
                      ),
                    ),
                  ),
                  const Text(
                    "What is your Gender?",
                    style: TextStyle(color: Colors.white),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: ListTile(
                          contentPadding: const EdgeInsets.all(0),
                          title: const Text(
                            "Male",
                            style: TextStyle(color: Colors.white),
                          ),
                          leading: Transform.translate(
                            offset: const Offset(16, 0),
                            // child: Radio(
                            //   value: 1,
                            //   groupValue: _gender,
                            //   onChanged: (value) {
                            //     setState(() {
                            //       _gender = value!;
                            //     });
                            //   },
                            // ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                            contentPadding: const EdgeInsets.all(0),
                            title: const Text(
                              "Female",
                              style: TextStyle(color: Colors.white),
                            ),
                            leading: Transform.translate(
                              offset: const Offset(16, 0),
                              // child: Radio(
                              //   value: 2,
                              //   groupValue: _gender,
                              //   onChanged: (value) {
                              //     setState(() {
                              //       _gender = value!;
                              //     });
                              //   },
                              // ),
                            )),
                      ),
                      Expanded(
                          child: ListTile(
                        contentPadding: const EdgeInsets.all(0),
                        title: const Text(
                          "Other",
                          style: TextStyle(color: Colors.white),
                        ),
                        leading: Transform.translate(
                          offset: const Offset(16, 0),
                          // child: Radio(
                          //   value: 3,
                          //   groupValue: _gender,
                          //   onChanged: (value) {
                          //     setState(() {
                          //       _gender = value!;
                          //     });
                          //   },
                          // ),
                        ),
                      )),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const LoginScreen()));
                    },
                    child: Container(
                      height: 60,
                      width: 450,
                      decoration: const BoxDecoration(
                          color: Color(0xFF17479D),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
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
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 150.0, top: 30),
                    child: Row(
                      children: [
                        Text(
                          "You have an account?",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Login",
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
          ),
        ],
      ),
    );
  }
}
