import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';


class AppBarActionItem extends StatelessWidget {
  const AppBarActionItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
String date ;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [

        IconButton(
          // onPressed: (){
          //   showDateRangePicker(context: context, firstDate: DateTime.now(), lastDate:DateTime(2090));
          // },

          onPressed: () {
            showDatePicker(context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now().subtract(const Duration(days: 5)),
                lastDate: DateTime(2090)).then((value) {
          date = DateFormat.yMMMMd().format(value!).toString();
            });},
          icon: SvgPicture.asset(
            'assets/calendar.svg',
            width: 20.0,
          ),
        ),


        // const Row(
        //   children: [
        //     CircleAvatar(
        //       radius: 17,
        //       backgroundImage: NetworkImage(
        //           'https://cdn.shopify.com/s/files/1/0045/5104/9304/t/27/assets/AC_ECOM_SITE_2020_REFRESH_1_INDEX_M2_THUMBS-V2-1.jpg?v=8913815134086573859'),
        //     ),
        //     Icon(
        //       Icons.arrow_drop_down_outlined,
        //       color: AppColors.black,
        //     )
        //   ],
        // )
      ],
    );
  }
}