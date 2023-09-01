import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/style/colors.dart';

class UserEvents extends StatelessWidget {
  const UserEvents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 1500,
            child: ListView.builder(
              itemBuilder: (context,index)=>GestureDetector(
              onTap: (){},
              child: Container(
                alignment: Alignment.center,
                // padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                // width: 1200,
                height: 50,
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
                child: Text("Event ${index + 1}",
                  style: const TextStyle(
                      fontSize: 25,color: Colors.black ),),

              ),
            ),),
          ),
        ],
      ),
    );
    // return SingleChildScrollView(
    //   child: Padding(
    //     padding:  EdgeInsets.all(MediaQuery.of(context).size.width/40),
    //     child: Container(
    //       decoration: BoxDecoration(
    //         color: AppColors.primaryBg,
    //         borderRadius: BorderRadius.circular(30),
    //         boxShadow: const [
    //           BoxShadow(
    //             // offset: Offset(10, 15),
    //             blurRadius: 15,
    //             color: AppColors.iconGray,
    //           ),
    //         ],
    //       ),
    //
    //       child: Table(
    //         defaultVerticalAlignment: TableCellVerticalAlignment.middle,
    //         border: TableBorder.all(
    //             color: AppColors.primary,
    //             borderRadius: BorderRadius.circular(20)
    //
    //         ),
    //         children: [
    //           const TableRow(
    //               decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
    //                   color: AppColors.secondary
    //               ),
    //               children: [
    //                 TableCell(
    //                   child: Padding(
    //                     padding: EdgeInsets.all(16.0),
    //                     child: Text("Event",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
    //                   ),
    //                 ),
    //                 TableCell(
    //                   child: Padding(
    //                     padding: EdgeInsets.all(16.0),
    //                     child: Text("Time",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold),),
    //                   ),
    //
    //                 ),
    //
    //               ]
    //           ),
    //           ...List.generate(60, (index) =>  const TableRow(
    //               children: [
    //                 TableCell(
    //                   child: Padding(
    //                     padding:  EdgeInsets.all(8.0),
    //                     child: Row(
    //                       children: [
    //                         Padding(
    //                           padding: EdgeInsets.all(8.0),
    //                         ),
    //                         Text("anyevent"),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //                 TableCell(
    //                   child: Padding(
    //                     padding: EdgeInsets.all(8.0),
    //                     child: Text("12:00",textAlign: TextAlign.center,),
    //                   ),
    //
    //                 ),
    //
    //               ]
    //           ))
    //         ],
    //       ),
    //     ),
    //   ),
    // );


  }
}
