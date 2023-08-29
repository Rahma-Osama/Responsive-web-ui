import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_dashboard_ui/cubit/cubit.dart';
import 'package:responsive_dashboard_ui/cubit/states.dart';
import 'package:responsive_dashboard_ui/style/colors.dart';

import '../../../config/responsive.dart';
import '../../app_bar_actions_item.dart';
import '../../dashboard_header.dart';

class Users extends StatelessWidget {
  const Users({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LayoutCubit,LayoutStates>(
      builder: (context,state) {
        return Scaffold(

          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            const Padding(
               padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
               child:  DashboardHeader(
                 headerOne: 'Users',
                 headerTwo: "",
               ),
             ),
              Expanded(
                child: Padding(
                  padding:  EdgeInsets.all(MediaQuery.of(context).size.width/70),
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: AppColors.primaryBg,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6),
                        itemBuilder: (context , index)=>

                            Container(
                              alignment: Alignment.center,
                         // padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                          margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                          width: 30,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                // offset: Offset(10, 15),
                                blurRadius: 4,
                                color: AppColors.iconGray,
                              ),
                            ],
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                              child: Text("User ${index + 1}",
                                 style: const TextStyle(
                               fontSize: 25,color: Colors.black ),),

                        ),),




                    // Our Previous Users UI
                    // child: Table(
                    //   defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    //   border: TableBorder.all(
                    //       color: AppColors.primary,
                    //       borderRadius: BorderRadius.circular(20)
                    //
                    //   ),
                    //   children: [
                    //     const TableRow(
                    //         decoration: BoxDecoration(
                    //             borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                    //             color: AppColors.secondary
                    //         ),
                    //         children: [
                    //           TableCell(
                    //             child: Padding(
                    //               padding: EdgeInsets.all(16.0),
                    //               child: Text("User",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
                    //             ),
                    //           ),
                    //           TableCell(
                    //             child: Padding(
                    //               padding: EdgeInsets.all(16.0),
                    //               child: Text("Last Update",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
                    //             ),
                    //
                    //           ),
                    //
                    //         ]
                    //     ),
                    //     ...List.generate(60, (index) =>  TableRow(
                    //         children: [
                    //           TableCell(
                    //             child: Padding(
                    //               padding:  const EdgeInsets.all(8.0),
                    //               child: InkWell(
                    //                 onTap: (){
                    //                   BlocProvider.of<LayoutCubit>(context).changeIndex(4);
                    //                 },
                    //                 child: const Row(
                    //                   children: [
                    //                     Padding(
                    //                       padding: EdgeInsets.all(8.0),
                    //                       child: Icon(Icons.person,),
                    //                     ),
                    //                     Text("user123456"),
                    //                   ],
                    //                 ),
                    //               ),
                    //             ),
                    //           ),
                    //           const TableCell(
                    //             child: Padding(
                    //               padding: EdgeInsets.all(8.0),
                    //               child: Text("2 days ago",textAlign: TextAlign.center,),
                    //             ),
                    //
                    //           ),
                    //
                    //         ]
                    //     ))
                    //   ],
                    // ),






                  ),
                ),
              ),
            ],
          ),
        );
      }, listener: (BuildContext context, LayoutStates state) {  },
    );

    // return Row(
    //   children: [
    //     if (Responsive.isDesktop(context))
    //       const Expanded(
    //         flex: 1,
    //         child: SideMenu(),
    //       ),
    //     Expanded(
    //       flex: 10,
    //       child: SingleChildScrollView(
    //         child: Padding(
    //           padding:  EdgeInsets.all(MediaQuery.of(context).size.width/40),
    //           child: Table(
    //             defaultVerticalAlignment: TableCellVerticalAlignment.middle,
    //             border: TableBorder.all(
    //                 color: AppColors.primary,
    //               borderRadius: BorderRadius.circular(20)
    //
    //             ),
    //             children: [
    //               TableRow(
    //                 decoration: BoxDecoration(
    //                     borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
    //                     color: AppColors.secondary
    //                 ),
    //                 children: [
    //                   TableCell(
    //                       child: Padding(
    //                         padding: const EdgeInsets.all(16.0),
    //                         child: Text("User",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
    //                       ),
    //                   ),
    //                       TableCell(
    //                       child: Padding(
    //                         padding: const EdgeInsets.all(16.0),
    //                         child: Text("Last Update",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
    //                       ),
    //
    //                   ),
    //
    //                 ]
    //               ),
    //               ...List.generate(60, (index) =>  TableRow(
    //                   children: [
    //                     TableCell(
    //                       child: Padding(
    //                         padding:  const EdgeInsets.all(8.0),
    //                         child: InkWell(
    //                           onTap: (){},
    //                           child: const Row(
    //                             children: [
    //                               Padding(
    //                                 padding: EdgeInsets.all(8.0),
    //                                 child: Icon(Icons.person,),
    //                               ),
    //                               Text("user123456"),
    //                             ],
    //                           ),
    //                         ),
    //                       ),
    //                     ),
    //                     TableCell(
    //                       child: Padding(
    //                         padding: const EdgeInsets.all(8.0),
    //                         child: Text("2 days ago",textAlign: TextAlign.center,),
    //                       ),
    //
    //                     ),
    //
    //                   ]
    //               ))
    //             ],
    //           ),
    //         ),
    //       ),
    //     ),
    //     if (Responsive.isDesktop(context))
    //       Expanded(
    //         flex: 4,
    //         child: Container(
    //           height: SizeConfig.screenHeight,
    //           color: AppColors.secondaryBg,
    //           child: SingleChildScrollView(
    //             padding: const EdgeInsets.all(30),
    //             child: Column(
    //               children: const [
    //                 AppBarActionItem(),
    //                 PaymentsDetailList(),
    //               ],
    //             ),
    //           ),
    //         ),
    //       ),
    //   ],
    // );
  }
}
