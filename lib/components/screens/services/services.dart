import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/components/components.dart';
import 'package:responsive_dashboard_ui/config/responsive.dart';
class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            GridView .builder(
              itemCount: 9,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisSpacing: Responsive.isDesktop(context)?MediaQuery.of(context).size.width/20 :MediaQuery.of(context).size.width/4,crossAxisCount: Responsive.isDesktop(context)?4 : Responsive.isTablet(context)?3:2,mainAxisSpacing: MediaQuery.of(context).size.height/20), itemBuilder: (context,index)=>InfoCard(icon: "assets/bank.svg",label: "أبواب و نوافذ",amount: "",))
          ],
        ),

      ),
    );
  }
}
