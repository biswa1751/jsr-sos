import 'package:flutter/material.dart';
import 'package:jsr_sos/src/screens/home_screen/local_components/carousal.dart';
import 'package:jsr_sos/src/screens/home_screen/local_components/services_select.dart';

class ServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Carousel(),
        Flexible(
          child: ServicesSelect(),
        )
      ],
    );
  }
}
