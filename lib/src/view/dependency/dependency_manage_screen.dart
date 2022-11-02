import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/controller/dependency_contlloer.dart';
import 'package:getx/src/view/dependency/get_lazyput.dart';
import 'package:getx/src/view/dependency/get_put.dart';

class DependencyManageScreen extends StatelessWidget {
  const DependencyManageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("의존성 주입"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(
                  GetPut(),
                  binding: BindingsBuilder(() {
                    Get.put(
                        DependencyController()); // 동작 할때 인스턴스를 생성하여 메모리에 올린다.
                  }),
                );
              },
              child: Text("Get.Put"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(
                  GetLazyPut(),
                  binding: BindingsBuilder(() {
                    Get.lazyPut<DependencyController>(
                      () => (DependencyController()),
                    ); // 입력(사용)이 되었을때 컨트롤러에 접근하여 인스턴스 생성하여 메모리에 올린다.
                  }),
                );
              },
              child: Text("Get.lazyPut"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(
                  GetPut(),
                  binding: BindingsBuilder(() {
                    Get.putAsync<DependencyController>(() async {
                      await Future.delayed(Duration(seconds: 5));
                      return DependencyController(); // 비동기 처리 해서 인스턴스를 메모리에 올릴때
                    });
                  }),
                );
              },
              child: Text("Get.putAsync"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(
                  GetPut(),
                  binding: BindingsBuilder(() {
                    Get.create<DependencyController>(
                        () => DependencyController()); // 입력(사용)이 되었을때 인스턴스를 메모리에 추가로 계속 생성한다.
                  }),
                );
              },
              child: Text("Get.create"),
            ),
          ],
        ),
      ),
    );
  }
}
