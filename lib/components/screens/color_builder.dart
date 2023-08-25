import 'package:flutter/material.dart';

import '../../config/responsive.dart';
class ColorBuilder extends StatelessWidget {
  const ColorBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: CircleAvatar(backgroundColor: Colors.blueGrey ,)),
        Text("2000")
      ],
    );
  }
}
