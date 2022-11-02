import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/controller/getx_controller.dart';

class WithGetX extends StatelessWidget {
  const WithGetX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "GetX",
            style: TextStyle(fontSize: 50),
          ),
          GetBuilder<GetXController>( // id 생성해서 data를 따로 받을수 있다
            builder: (controller) {
              return Text(
                "${controller.count}",
                style: TextStyle(fontSize: 50),
              );
            },
          ),
          ElevatedButton(
            onPressed: () {
              Get.find<GetXController>().increase();
            },
            child: Text(
              "+",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
