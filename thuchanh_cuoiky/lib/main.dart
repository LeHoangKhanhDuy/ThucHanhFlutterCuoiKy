import 'package:flutter/material.dart';
import 'package:thuchanh_cuoiky/app/page/auth/login.dart';
import 'package:thuchanh_cuoiky/app/page/profile/edit_profile_screen.dart';
import 'package:thuchanh_cuoiky/app/page/profile/profile_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      // initialRoute: "/",
      // onGenerateRoute: AppRoute.onGenerateRoute,  -> su dung auto route (pushName)
    );
  }
}
