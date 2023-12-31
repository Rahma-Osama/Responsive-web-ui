import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,

        required this.backgroundColor,
        required this.textColor ,
        this.borderRadius,
        required this.text,
        this.fontSized,
        required this.func,
        required this.width,
        this.height = 50,

      }) : super(key: key);
  final double? width;
  final double? height;
  final Color backgroundColor;
  final Color? textColor;
  final BorderRadius? borderRadius;
  final double? fontSized;
  final String text;
  final VoidCallback func;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          onPressed: func,
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            padding: const EdgeInsets.symmetric( horizontal: 30 , vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular( 30,),
            ),
            // minimumSize: Size(150, 50),
          ),
          child:  Text(
            text,
     style: TextStyle(
       color: textColor ,
       fontSize: fontSized,
       fontFamily: 'Poppins',

          ),
        ),
      ),
    ));
  }
}