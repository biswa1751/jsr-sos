import 'package:flutter/material.dart';
import 'package:jsr_sos/src/constants/colors.dart';
import 'package:jsr_sos/src/constants/theme.dart';
import 'package:jsr_sos/src/global_components/app_button.dart';
import 'package:jsr_sos/src/global_components/loading_card.dart';
import 'package:jsr_sos/src/helpers/app_helpers.dart';
import 'package:jsr_sos/src/models/resource.dart';
import 'package:jsr_sos/src/screens/error_info_screen/error_info_screen.dart';
import 'package:jsr_sos/src/services/firestore_database_service.dart';

class DoctorsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Resource>>(
      stream: FirestoreDatabaseService().doctorsStream(),
      builder: (_, snapshot) {
        if (snapshot.hasError) {
          return ErrorInfoScreen(
            errorMessage: snapshot.error,
            trace: snapshot.stackTrace,
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return LoadingCard();
        }
        if (!snapshot.hasData) {
          return Text('No Doctors');
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Medical Assistance',
                style: AppTheme.textTheme.h216Regular,
              ),
            ),
            Flexible(
              child: ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (_, index) {
                  final doctor = snapshot.data?[index];
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
                          children: [
                            Flexible(
                              child: Text(
                                doctor?.name ?? '',
                                style: AppTheme.textTheme.h216Medium,
                              ),
                            ),
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
                        Text(
                          'Veified on: ${AppHelpers.getFormattedDate(doctor!.verificationDate!.toDate())}',
                          style: AppTheme.textTheme.regular12,
                        ),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: AppButton(text: 'Call', onPressed: () {}))
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
