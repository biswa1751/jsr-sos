import 'package:jsr_sos/src/constants/colors.dart';
import 'package:flutter/material.dart';

class AppFormAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Are you want to exit ?\n(unsaved data will be lost)',
        style: Theme.of(context).textTheme.bodyText1,
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: Text(
            'YES',
            style: Theme.of(context)
                .textTheme
                .button!
                .copyWith(color: AppColors.red),
          ),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text(
            'NO',
            style: Theme.of(context)
                .textTheme
                .button!
                .copyWith(color: AppColors.green),
          ),
        ),
      ],
    );
  }
}
