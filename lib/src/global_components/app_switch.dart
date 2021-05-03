import 'package:jsr_sos/src/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class AppSwitch extends StatelessWidget {
  final bool? value;
  final Function(bool)? onToggle;

  const AppSwitch({Key? key, this.value, this.onToggle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      value: value!,
      showOnOff: true,
      activeColor: Colors.black,
      activeText: 'ON',
      inactiveText: 'OFF',
      width: 75,
      padding: 5,
      onToggle: onToggle!,
      activeTextColor: AppColors.white,
      inactiveTextColor: AppColors.white,
      inactiveIcon: Icon(Icons.sentiment_dissatisfied_sharp),
      activeIcon: Icon(Icons.sentiment_satisfied_alt),
    );
  }
}
