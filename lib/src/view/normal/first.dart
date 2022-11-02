import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/view/normal/second.dart';




class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(SecondScreen());
              },
              child: const Text('다음페이지 이동'),
            ),

          ],
        ),
      ),
    );
  }
}
