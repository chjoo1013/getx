import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/controller/getx_controller.dart';
import 'package:getx/src/controller/provier_controller.dart';
import 'package:getx/src/controller/reactive_getx_controller.dart';
import 'package:getx/src/view/state/with_getx.dart';
import 'package:getx/src/view/state/with_provider.dart';
import 'package:provider/provider.dart';

class ReactiveStateManageScreen extends StatelessWidget {
  const ReactiveStateManageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ReactiveGetXController());
    return Scaffold(
      appBar: AppBar(
        title: Text("반응형상태관리"), // 값이 변화가 생길때만 화면을 재생성
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "GetX",
              style: TextStyle(fontSize: 50),
            ),
            Obx(() {
             // print("UPDATE!!!");
              return Text(
                "${Get.find<ReactiveGetXController>().count.value}",
                style: TextStyle(fontSize: 50),
              );
            }),
            ElevatedButton(
              onPressed: () {
                Get.find<ReactiveGetXController>().increase();
              },
              child: Text(
                "+",
                style: TextStyle(fontSize: 30),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<ReactiveGetXController>().putNumber(5);
              },
              child: Text(
                "5로 변경",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
