import 'package:jsr_sos/src/constants/theme.dart';
import 'package:jsr_sos/src/constants/colors.dart';

import 'package:flutter/material.dart';

class ErrorInfo extends StatelessWidget {
  final String? message;

  const ErrorInfo({Key? key, this.message}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Text(
        message!,
        style: AppTheme.textTheme.headline6!.copyWith(
          color: AppColors.red,
        ),
      ),
    );
  }
}
