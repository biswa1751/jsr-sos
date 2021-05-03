import 'package:flutter/material.dart';

class WhiteButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;

  const WhiteButton({Key? key, this.text, this.onPressed}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      onPressed: onPressed,
      child: Text(
        text!,
        style: Theme.of(context).textTheme.button!.copyWith(color: Colors.black),
      ),
    );
  }
}
