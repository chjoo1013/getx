import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/controller/getx_controller.dart';

class BindingScreen extends GetView<GetXController> {
  const BindingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // GetBuilder<GetXController>(builder: (_) {
          //   return Text(
          //     _.count.toString(),
          //     style: TextStyle(fontSize: 40),
          //   );
          // }),
          Obx(
            () => Text(
              controller.count.toString(),
              style: TextStyle(fontSize: 40),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // 1. Get.find<GetXController>().increase();
              // 2. GetXController.to.increase();
              controller.increase(); // GetView 사용
            },
            child: Text(''),
          ),
        ],
      ),
    );
  }
}
