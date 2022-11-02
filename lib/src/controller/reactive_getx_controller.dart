import 'package:get/get.dart';

class ReactiveGetXController extends GetxController {
  RxInt count = 0.obs;

  void increase() {
    count++;
  }

  void putNumber(int value) {
    count(value);
  }

  @override
  void onInit() {
    // 최초 한번 실행
    // ever(
    //   count,
    //   (_) => print("매번 호출"),
    // );
    // once(
    //   count,
    //   (_) => print("한번만 호출"),
    // );
    debounce(  //검색 쪽에 쓰인다
      count,
      (_) => print("마지막 변경에 한번만 호출"),
      time: Duration(seconds: 1),
    );
    super.onInit();
  }
}
