import 'package:ats/admin/accessories_page.dart';
import 'package:ats/admin/adminLogin.dart';
import 'package:ats/admin/adminhome.dart';
import 'package:ats/admin/paymentPage.dart';
import 'package:ats/screens/landingPage.dart';
import 'package:ats/screens/splash.dart';
import 'package:ats/user/Accessories/Accessories.dart';
import 'package:ats/user/Cab/PaymentCab.dart';
import 'package:ats/user/Technician/TechnicianHome.dart';
import 'package:ats/user/UserModule.dart';
import 'package:ats/user/Cab/bookingCab.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
      home: const UserModule(),
    );
  }
}
