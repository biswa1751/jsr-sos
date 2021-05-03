import 'package:flutter/material.dart';
import 'package:jsr_sos/src/constants/colors.dart';
import 'package:jsr_sos/src/constants/theme.dart';
import 'package:jsr_sos/src/global_components/app_button.dart';
import 'package:jsr_sos/src/helpers/app_helpers.dart';
import 'package:jsr_sos/src/models/resource.dart';

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
          Align(
              alignment: Alignment.bottomRight,
              child: AppButton(text: 'Call', onPressed: () {}))
        ],
      ),
    );
  }
}
