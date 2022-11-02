import 'package:get/get.dart';

class GetXController extends GetxController {
  static GetXController get to => Get.find(); // 전역설정

  RxInt count = 0.obs;
  void increase() {
    count++;
  }

  void putNumber(int value) {
    count(value);
  }

  // int count = 0;
  //
  // void increase() {
  //   count++;
  //   update();
  // }

}
