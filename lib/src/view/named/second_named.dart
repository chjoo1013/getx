import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondNamedScreen extends StatelessWidget {
  const SecondNamedScreen({Key? key}) : super(key: key);

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
                Get.offAllNamed("/");
              },
              child: const Text('홈 이동'),
            ),
          ],
        ),
      ),
    );
  }
}
