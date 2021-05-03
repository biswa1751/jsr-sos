import 'package:jsr_sos/src/constants/colors.dart';
import 'package:flutter/material.dart';

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
      color: AppColors.black,
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          text,
          style:
              Theme.of(context).textTheme.button!.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
