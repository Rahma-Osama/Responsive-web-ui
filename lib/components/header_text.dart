import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/style/colors.dart';

Widget headerText({required text,required context}){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(text,style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.iconGray,fontSize: MediaQuery.of(context).size.width/40),),
  );
}