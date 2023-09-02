import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_dashboard_ui/cubit/cubit.dart';
import 'package:responsive_dashboard_ui/login_screen/login_page.dart';
import 'package:responsive_dashboard_ui/style/colors.dart';


void main() {
  GoogleFonts.config.allowRuntimeFetching = false ;

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
          home: const LoginPage(),
        )
    );
  }
  }
