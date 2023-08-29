import 'package:flutter/material.dart';

import '../../../config/responsive.dart';
import '../../../config/size_config.dart';
import '../../../style/colors.dart';
import '../../../style/style.dart';
import '../../dashboard_header.dart';
import '../../history_table.dart';
import '../../info_card.dart';
import '../../payments_detail_list.dart';
class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.screenHeight,
      child: SingleChildScrollView(
        padding:  EdgeInsets.all(Responsive.isDesktop(context) ?30 : 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DashboardHeader(
              headerOne: "Dashboard",
              headerTwo: "",
            ),
            SizedBox(
              height:Responsive.isDesktop(context) ? SizeConfig.blockSizeVertical! * 5 : SizeConfig.blockSizeVertical! * 3,
            ),
            SizedBox(
              width: SizeConfig.screenWidth,
              child: const Wrap(
                runSpacing: 20,
                spacing: 20,
                alignment: WrapAlignment.spaceBetween,
                children: [
                  InfoCard(
                    icon: 'assets/credit-card.svg',
                    label: 'Transfer via\nCard number',
                    amount: '\$1200',
                  ),
                  InfoCard(
                    icon: 'assets/transfer.svg',
                    label: 'Transfer via\nOnline banks',
                    amount: '\$2000',
                  ),
                  InfoCard(
                    icon: 'assets/bank.svg',
                    label: 'Transfer via\nSame bank',
                    amount: '\$1500',
                  ),
                  InfoCard(
                    icon: 'assets/invoice.svg',
                    label: 'Transfer to\nOther bank',
                    amount: '\$800',
                  ),
                ],
              ),
            ),
            SizedBox(
              height:Responsive.isDesktop(context) ? SizeConfig.blockSizeVertical! * 4 : SizeConfig.blockSizeVertical! * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    PrimaryText(
                      text: 'Balance',
                      size:Responsive.isDesktop(context) ? 16 : 14,
                      color: AppColors.secondary,
                    ),
                    PrimaryText(
                      text: '\$1500',
                      size: Responsive.isDesktop(context) ? 30 : 22,
                      fontWeight: FontWeight.w800,
                    ),
                  ],
                ),
                PrimaryText(
                  text: 'Past 30 Days',
                  size:Responsive.isDesktop(context) ? 16 : 14,
                  color: AppColors.secondary,
                )
              ],
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 3,
            ),
            const SizedBox(
              height: 180,
              //child: BarChartComponent(),
            ),
            SizedBox(
              height:Responsive.isDesktop(context) ? SizeConfig.blockSizeVertical! * 5 : SizeConfig.blockSizeVertical! * 2,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrimaryText(
                  text: 'History',
                  size: 30.0,
                  fontWeight: FontWeight.w800,
                ),
                PrimaryText(
                  text: 'Transaction of past 6 months',
                  size: 16,
                  color: AppColors.secondary,
                ),
              ],
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 5,
            ),
            const HistoryTable(),
            if (!Responsive.isDesktop(context))
              const PaymentsDetailList()
          ],
        ),
      ),
    );

  }
}
