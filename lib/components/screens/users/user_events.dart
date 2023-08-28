import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/style/colors.dart';

class UserEvents extends StatelessWidget {
  const UserEvents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.all(MediaQuery.of(context).size.width/40),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.primaryBg,
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                // offset: Offset(10, 15),
                blurRadius: 15,
                color: AppColors.iconGray,
              ),
            ],
          ),

          child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            border: TableBorder.all(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(20)

            ),
            children: [
              const TableRow(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                      color: AppColors.secondary
                  ),
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text("Event",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text("Time",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
                      ),

                    ),

                  ]
              ),
              ...List.generate(60, (index) =>  const TableRow(
                  children: [
                    TableCell(
                      child: Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                            ),
                            Text("anyevent"),
                          ],
                        ),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text("12:00",textAlign: TextAlign.center,),
                      ),

                    ),

                  ]
              ))
            ],
          ),
        ),
      ),
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
