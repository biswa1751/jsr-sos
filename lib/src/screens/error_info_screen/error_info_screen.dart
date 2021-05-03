import 'package:flutter/material.dart';

class ErrorInfoScreen extends StatelessWidget {
  final errorMessage;
  final StackTrace? trace;
  const ErrorInfoScreen(
      {Key? key, required this.errorMessage, required this.trace})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    print(trace);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error,
            size: 100,
            color: Colors.red,
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              errorMessage.toString(),
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
        ],
      ),
    );
  }
}
