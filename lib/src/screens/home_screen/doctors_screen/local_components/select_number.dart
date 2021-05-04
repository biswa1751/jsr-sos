import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:jsr_sos/src/constants/theme.dart';
import 'package:jsr_sos/src/helpers/app_helpers.dart';

class SelectNumber extends StatelessWidget {
  final List<String?> numbers;

  const SelectNumber({Key? key, required this.numbers}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    numbers.removeWhere((element) => element == null || element.isEmpty);
    return AlertDialog(
      content: numbers.isEmpty
          ? Text(
              'No Phone Numbers found :(',
              style: AppTheme.textTheme.h216Medium,
            )
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: numbers
                  .map(
                    (e) => Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              e!.trim(),
                              style: AppTheme.textTheme.h216Medium,
                            ),
                            IconButton(
                              icon: Icon(TablerIcons.phone),
                              onPressed: () => AppHelpers.call(
                                e,
                              ),
                            ),
                          ],
                        ),
                        if (numbers.indexOf(e) < numbers.length - 1) Divider()
                      ],
                    ),
                  )
                  .toList(),
            ),
    );
  }
}
