import 'package:get/get.dart';
import 'package:getx/src/controller/getx_controller.dart';

class BindingScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(GetXController());
  }

}