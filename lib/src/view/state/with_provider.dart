import 'package:flutter/material.dart';
import 'package:getx/src/controller/provier_controller.dart';
import 'package:provider/provider.dart';

class WithProvider extends StatelessWidget {
  const WithProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Provider",
            style: TextStyle(fontSize: 50),
          ),
          Consumer<ProviderController>(
            builder: (_, snapshot, child) {
              return Text(
                "${snapshot.count}",
                style: TextStyle(fontSize: 50),
              );
            },
          ),
          ElevatedButton(
            onPressed: () {
              Provider.of<ProviderController>(context, listen: false)
                  .increase();
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
