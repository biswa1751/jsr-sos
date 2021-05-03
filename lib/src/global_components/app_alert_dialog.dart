import 'package:jsr_sos/src/constants/theme.dart';
import 'package:jsr_sos/src/global_components/app_button.dart';
import 'package:jsr_sos/src/global_components/white_button.dart';
import 'package:flutter/material.dart';

class AppAlertDialog extends StatelessWidget {
  final String title, subtitle;

  const AppAlertDialog({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: AppTheme.textTheme.headline4,
          ),
          SizedBox(height: 10),
          Text(
            subtitle,
            style: AppTheme.textTheme.bodyText1,
          ),
        ],
      ),
      actions: [
        AppButton(
          text: 'YES',
          onPressed: () => Navigator.of(context).pop(true),
        ),
        WhiteButton(
          text: 'NO',
          onPressed: () => Navigator.of(context).pop(false),
        ),
      ],
    );
  }
}
