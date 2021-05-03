import 'package:flutter/material.dart';

class LoadingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(Colors.black),
      ),
    );
  }
}
