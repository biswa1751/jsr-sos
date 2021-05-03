import 'package:flutter/material.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:jsr_sos/src/constants/colors.dart';
import 'package:jsr_sos/src/constants/theme.dart';
import 'package:jsr_sos/src/global_components/app_button.dart';
import 'package:jsr_sos/src/helpers/app_helpers.dart';
import 'package:jsr_sos/src/models/resource.dart';
import 'package:maps_launcher/maps_launcher.dart';

class ResourceInfoCard extends StatelessWidget {
  final Resource resource;

  const ResourceInfoCard({Key? key, required this.resource}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.fromLTRB(15, 0, 15, 15),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.greyd6),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  resource.name ?? '',
                  style: AppTheme.textTheme.h216Medium,
                ),
              ),
              if (resource.isVerified ?? false)
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 14,
                    vertical: 3,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.green,
                  ),
                  child: Text(
                    'Verified',
                    style: AppTheme.textTheme.h412Medium!
                        .copyWith(color: AppColors.white),
                    textAlign: TextAlign.center,
                  ),
                )
            ],
          ),
          resource.verificationDate != null
              ? Text(
                  'Veified on: ${AppHelpers.getFormattedDate(resource.verificationDate!.toDate())}',
                  style: AppTheme.textTheme.regular12,
                )
              : Text('We are verifying it'),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (resource.address != null &&
                    (resource.address?.isNotEmpty ?? false))
                  OutlinedButton(
                    onPressed: () {
                      MapsLauncher.launchQuery(resource.address!);
                    },
                    child: Text(
                      'Get Direction',
                      style: AppTheme.textTheme.h412Medium,
                    ),
                  ),
                SizedBox(
                  width: 20,
                ),
                AppButton(
                  text: 'Call',
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (_) => SelectNumber(
                        numbers: resource.phoneNumbers ?? [],
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

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
                        Divider()
                      ],
                    ),
                  )
                  .toList(),
            ),
    );
  }
}
