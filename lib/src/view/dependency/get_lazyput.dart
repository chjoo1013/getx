import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/controller/dependency_contlloer.dart';

class GetLazyPut extends StatelessWidget {
  const GetLazyPut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ElevatedButton(
        onPressed: (){
          Get.find<DependencyController>().increas();
        },
        child: Text('button'),

      ),
    );
  }
}
