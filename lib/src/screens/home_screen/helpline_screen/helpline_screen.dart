import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:jsr_sos/src/constants/constants.dart';
import 'package:jsr_sos/src/constants/theme.dart';
import 'package:jsr_sos/src/helpers/app_helpers.dart';

class HelplineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            AppConstants.helplineNumber,
            style: AppTheme.textTheme.h216Medium,
          ),
          IconButton(
            icon: Icon(TablerIcons.phone),
            onPressed: () => AppHelpers.call(
              AppConstants.helplineNumber,
            ),
          ),
        ],
      ),
    );
  }
}
