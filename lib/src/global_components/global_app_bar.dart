import 'package:flutter/material.dart';
import 'package:jsr_sos/src/constants/colors.dart';
import 'package:jsr_sos/src/constants/theme.dart';

PreferredSizeWidget globalAppBar({ required String title}) {
  return AppBar(
    title: Text(
      title,
      style: AppTheme.textTheme.headerBold14!.copyWith(color: AppColors.white),
    ),
  );
}
