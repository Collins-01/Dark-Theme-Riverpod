import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);
  final bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Switch"),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: CupertinoSwitch(
              onChanged: (v) {},
              value: _value,
            ),
          )
        ],
      ),
    );
  }
}
