import 'package:flutter/material.dart';

class GlobalAppBar extends StatelessWidget {
  final String title;
  final bool showBackButton;
  final bool showSideButton;
  final VoidCallback? onPressedSidebutton;
  final VoidCallback? onBackPressed;
  final String? sideButtonText;
  const GlobalAppBar(
      {Key? key,
      required this.title,
      this.showBackButton = false,
      this.showSideButton = false,
      this.onPressedSidebutton,
      this.sideButtonText,
      this.onBackPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 22, left: showBackButton ? 0 : 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (showBackButton)
            BackButton(
              onPressed: onBackPressed,
            ),
          Expanded(
            child: Text(
              title,
              maxLines: 3,
              // overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          if (showSideButton)
            TextButton(
              onPressed: onPressedSidebutton,
              style: ButtonStyle(
                padding: MaterialStateProperty.all(
                  const EdgeInsets.only(right: 20,left: 20),
                ),
              ),
              child: Text(
                sideButtonText!,
                style: Theme.of(context).textTheme.button,
              ),
            )
        ],
      ),
    );
  }
}
