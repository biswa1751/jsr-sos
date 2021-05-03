import 'package:flutter/material.dart';

class EmptyOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          // Image.asset(AppAssetImages.empty),
          SizedBox(height: 30),
          Text(
            'Empty',
            style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      ),
    );
  }
}
