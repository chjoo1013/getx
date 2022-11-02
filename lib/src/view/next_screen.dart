import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/home_screen.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${(Get.arguments as User).name} : ${(Get.arguments as User).age}"),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('뒤로 이동'),
            ),
          ],
        ),
      ),
    );
  }
}

