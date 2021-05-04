import 'package:flutter/material.dart';
import 'package:jsr_sos/src/constants/theme.dart';
import 'package:jsr_sos/src/global_components/loading_card.dart';
import 'package:jsr_sos/src/models/resource.dart';
import 'package:jsr_sos/src/screens/error_info_screen/error_info_screen.dart';
import 'package:jsr_sos/src/screens/home_screen/doctors_screen/local_components/resource_info_card.dart';
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
                  return ResourceInfoCard(resource: doctor!);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}


