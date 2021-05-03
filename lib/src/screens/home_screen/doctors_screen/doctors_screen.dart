import 'package:flutter/material.dart';
import 'package:jsr_sos/src/global_components/global_app_bar.dart';

class DoctorsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppBar(title: 'Doctors',),
    );
  }
}