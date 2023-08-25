import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard_ui/cubit/cubit.dart';
import 'package:responsive_dashboard_ui/cubit/states.dart';
import 'package:responsive_dashboard_ui/dashboard.dart';
import 'package:responsive_dashboard_ui/style/colors.dart';

import 'data.dart';

void main() {
  // screenIndex=0;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LayoutCubit>(
        create: (context) => LayoutCubit(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Responsive Dashboard',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: AppColors.primaryBg,
          ),
          home: const Dashboard(),
        )
    );
  }
  }
