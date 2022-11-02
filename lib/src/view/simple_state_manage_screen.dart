import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/src/controller/getx_controller.dart';
import 'package:getx/src/controller/provier_controller.dart';
import 'package:getx/src/view/state/with_getx.dart';
import 'package:getx/src/view/state/with_provider.dart';
import 'package:provider/provider.dart';

class SimpleStateManageScreen extends StatelessWidget {
  const SimpleStateManageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(GetXController());

    return Scaffold(
      appBar: AppBar(
        title: Text("단순상태관리"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: WithGetX(),
            ),
            Expanded(
              child: ChangeNotifierProvider<ProviderController>(
                create: (_) => ProviderController(),
                child: WithProvider(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
