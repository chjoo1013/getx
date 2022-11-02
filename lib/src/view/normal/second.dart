import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/home_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Named page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('뒤로 이동'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAll(() => HomeScreen());
              },
              child: const Text('홈 이동'),
            ),
          ],
        ),
      ),
    );
  }
}
