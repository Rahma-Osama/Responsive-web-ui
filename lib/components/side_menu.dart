import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard_ui/config/responsive.dart';
import 'package:responsive_dashboard_ui/config/size_config.dart';
import 'package:responsive_dashboard_ui/cubit/cubit.dart';
import 'package:responsive_dashboard_ui/cubit/states.dart';
import 'package:responsive_dashboard_ui/style/colors.dart';


class SideMenu extends StatefulWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit,LayoutStates>(
      builder: (context,state) {
        return Drawer(
          elevation: 2,
          child: Container(
            height: SizeConfig.screenHeight,
            color: AppColors.secondaryBg,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Responsive.isDesktop(context)
                      ? Container(
                          height: 100,
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            height: 35,
                            width: 35,
                            child: SvgPicture.asset('assets/mac-action.svg'),
                          ),
                        )
                      : const SizedBox(
                          height: 50,
                        ),
                  iconBuilder(icon: Icons.home,context: context, func: () { BlocProvider.of<LayoutCubit>(context).changeIndex(0); }),
                  iconBuilder(icon: Icons.person,context: context, func: () { BlocProvider.of<LayoutCubit>(context).changeIndex(1);
                  print(BlocProvider.of<LayoutCubit>(context).screenIndex);
                  }),
                  iconBuilder(icon: Icons.color_lens,context: context, func: () { BlocProvider.of<LayoutCubit>(context).changeIndex(2);}),
                  iconBuilder(icon: Icons.miscellaneous_services,context: context, func: () { BlocProvider.of<LayoutCubit>(context).changeIndex(3); }),

                  // Padding(
                  //   padding:  EdgeInsets.symmetric(horizontal: 8.0,vertical: MediaQuery.of(context).size.height/20),
                  //   child: Icon(Icons.home,size: MediaQuery.of(context).size.height/16,),
                  // ),
                  // Padding(
                  //   padding:  EdgeInsets.symmetric(horizontal: 8.0,vertical: MediaQuery.of(context).size.height/20),
                  //   child: Icon(Icons.person,size: MediaQuery.of(context).size.height/16,),
                  // ),
                  // Padding(
                  //   padding:  EdgeInsets.symmetric(horizontal: 8.0,vertical: MediaQuery.of(context).size.height/20),
                  //   child: Icon(Icons.color_lens,size: MediaQuery.of(context).size.height/16,),
                  // ),
                  // Padding(
                  //   padding:  EdgeInsets.symmetric(horizontal: 8.0,vertical: MediaQuery.of(context).size.height/20),
                  //   child: Icon(Icons.miscellaneous_services,size: MediaQuery.of(context).size.height/16,),
                  // ),
                  // Icon(Icons.person,size: MediaQuery.of(context).size.height/6,),
                  // Icon(Icons.color_lens,size: MediaQuery.of(context).size.height/6,),
                  // Icon(Icons.miscellaneous_services,size: MediaQuery.of(context).size.height/6,),
                  // iconBuilder(assetName: 'assets/pie-chart.svg'),
                  // iconBuilder(assetName: 'assets/home.svg'),
                  // iconBuilder(assetName: 'assets/clipboard.svg'),
                  // iconBuilder(assetName: 'assets/clipboard.svg'),
                  // iconBuilder(assetName: 'assets/clipboard.svg'),

                ],
              ),
            ),
          ),
        );
      }, listener: (BuildContext context, LayoutStates state) {  },
    );
  }
}


iconBuilder({
  required  icon,
  required context,
  required Function() func,
}) =>
    IconButton(
      onPressed: func,
      icon: Icon(icon,size: MediaQuery.of(context).size.height/16,),
      // iconSize: 20,
      padding:  EdgeInsets.symmetric(horizontal: 8.0,vertical: MediaQuery.of(context).size.height/20),
    );


// iconBuilder({
//   required String assetName,
// }) =>
//     IconButton(
//       onPressed: () {},
//       icon: SvgPicture.asset(assetName),
//       // iconSize: 20,
//       padding: const EdgeInsets.symmetric(vertical: 20.0),
//     );
