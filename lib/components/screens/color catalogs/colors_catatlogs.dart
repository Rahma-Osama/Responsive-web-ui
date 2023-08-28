import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard_ui/components/screens/color_builder.dart';
import 'package:responsive_dashboard_ui/cubit/cubit.dart';
import 'package:responsive_dashboard_ui/cubit/states.dart';

import '../../../config/responsive.dart';
import '../../header_text.dart';
class Colors extends StatelessWidget {
  const Colors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit,LayoutStates>(builder: (ctx,state)=>

        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    headerText(text: "Almunium", context: context,),
            SizedBox(child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount:30,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: Responsive.isDesktop(context)?10 :8,mainAxisSpacing:MediaQuery.of(context).size.height/60 ), itemBuilder: (BuildContext context, int index)=>const ColorBuilder(),)
            ) ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height/60,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    headerText(text: "Khashmunium", context: context,),
            SizedBox(child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount:30,gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: Responsive.isDesktop(context)?10 :8,mainAxisSpacing:MediaQuery.of(context).size.height/60 ), itemBuilder: (BuildContext context, int index)=>const ColorBuilder(),)
            ) ],
                ),


              ],
            ),
          ),
        )
        , listener: (ctx,state){}) ;
  }
}
