import 'package:flutter/material.dart';
import 'package:get/get.dart';



class FirstNamedScreen extends StatelessWidget {
  const FirstNamedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Named page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.offNamed("/second");
              },
              child: const Text('다음페이지 이동'),
            ),

          ],
        ),
      ),
    );
  }
}
