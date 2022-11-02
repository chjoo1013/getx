import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/view/dependency/dependency_manage_screen.dart';
import 'package:getx/src/view/normal/first.dart';
import 'package:getx/src/view/reactive_state_manage_screen.dart';
import 'package:getx/src/view/simple_state_manage_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('라우트 관리 홈'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(() => FirstScreen());
              },
              child: const Text('일반적인 라우트'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/first");
              },
              child: const Text("Named 라우트"),
            ),
            ElevatedButton(
              onPressed: () {
                //  Get.toNamed("/next", arguments: "창환");
                // Get.toNamed("/next", arguments: {"name": "창환", "age": "38"});
                Get.toNamed(
                  "/next",
                  arguments: User(name: "창환천재", age: 100),
                );
              },
              child: const Text("Arguments 전달"),
            ),
            ElevatedButton(
              onPressed: () {
                //  Get.toNamed("/user/23456");
                Get.toNamed("/user/23456?name=창환&age=55");
              },
              child: const Text("동적 url"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(SimpleStateManageScreen());
              },
              child: const Text("단순상태관리"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(ReactiveStateManageScreen());
              },
              child: const Text("반응형상태관리"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(DependencyManageScreen());
              },
              child: const Text("의존성 관리"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed("/binding");
              },
              child: const Text("바인딩"),
            ),
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  int age;

  User({this.name = '', this.age = 0});
}
