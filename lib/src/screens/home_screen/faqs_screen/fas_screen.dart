import 'package:flutter/material.dart';
import 'package:jsr_sos/src/constants/assets_urls.dart';
import 'package:jsr_sos/src/constants/colors.dart';
import 'package:jsr_sos/src/constants/theme.dart';
import 'package:jsr_sos/src/global_components/app_button.dart';

class FaqsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "FAQ'S",
            style: AppTheme.textTheme.h216Medium,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.greyd6),
              borderRadius: BorderRadius.circular(5)),
          child: ExpansionTile(
            expandedAlignment: Alignment.topLeft,
            maintainState: true,
            childrenPadding: const EdgeInsets.all(15),
            tilePadding: const EdgeInsets.symmetric(horizontal: 15),
            title: Text(
              'Where should I register for the vaccination?',
              style: AppTheme.textTheme.h412Medium,
            ),
            children: [
              Text(
                'Register on the Co-WIN Portal and schedule your vaccination appointment. https://www.cowin.gov.in/home',
                style: AppTheme.textTheme.h410Regular,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(AppAssetImages.vaccineTimeline),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: BigAppButton(
            text: 'Register on COWIN',
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
