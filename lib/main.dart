import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/binding/binding_screen.dart';
import 'package:getx/src/controller/getx_controller.dart';
import 'package:getx/src/home_screen.dart';
import 'package:getx/src/view/binding.dart';
import 'package:getx/src/view/named/first_named.dart';
import 'package:getx/src/view/next_screen.dart';
import 'package:getx/src/view/normal/second.dart';
import 'package:getx/src/view/user_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(
            name: "/",
            page: () => const HomeScreen(),
            transition: Transition.zoom),
        GetPage(
            name: "/first",
            page: () => const FirstNamedScreen(),
            transition: Transition.zoom),
        GetPage(
            name: "/second",
            page: () => const SecondScreen(),
            transition: Transition.zoom),
        GetPage(
            name: "/next",
            page: () => const NextScreen(),
            transition: Transition.zoom),
        GetPage(
            name: "/user/:uid",
            page: () => const UserScreen(),
            transition: Transition.zoom),
        GetPage(
            name: "/binding",
            page: () => BindingScreen(),
            binding: BindingScreenBinding()),
      ],
    );
  }
}
