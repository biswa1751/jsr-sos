import 'package:jsr_sos/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:jsr_sos/src/constants/theme.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const AppButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: AppColors.blue,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Text(
        text,
        style: AppTheme.textTheme.h412Medium!.copyWith(color: Colors.white),
      ),
    );
  }
}

class BigAppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const BigAppButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: AppColors.blue,
      onPressed: onPressed,
      height: 55,
      minWidth: double.infinity,
      child: Text(
        text,
        style: AppTheme.textTheme.h216Regular!.copyWith(color: Colors.white),
      ),
    );
  }
}
