import 'package:flutter/material.dart';

class ColorBuilder extends StatelessWidget {
  const ColorBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(child: CircleAvatar(backgroundColor: Colors.blueGrey ,)),
        Text("2000")
      ],
    );
  }
}
