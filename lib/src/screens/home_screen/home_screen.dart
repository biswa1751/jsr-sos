import 'package:jsr_sos/src/global_components/global_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            GlobalAppBar(
              showSideButton: true,
              sideButtonText: 'LOG OUT',
              title: 'Pick Role',
            ),
          ],
        ),
      ),
    );
  }
}
