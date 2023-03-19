import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kreedy_assign/screens/home_screen.dart';
import 'package:kreedy_assign/screens/navigation_screen.dart';
import 'package:kreedy_assign/screens/ticket_booking_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter assignment',
      debugShowCheckedModeBanner: false,
      home: NavigationScreen(),
    );
  }
}
