import 'package:flutter/material.dart';
import 'package:jsr_sos/src/constants/theme.dart';
import 'package:jsr_sos/src/global_components/global_app_bar.dart';
import 'package:jsr_sos/src/global_components/loading_card.dart';
import 'package:jsr_sos/src/models/resource.dart';
import 'package:jsr_sos/src/models/service.dart';
import 'package:jsr_sos/src/screens/error_info_screen/error_info_screen.dart';
import 'package:jsr_sos/src/screens/home_screen/doctors_screen/local_components/resource_info_card.dart';
import 'package:jsr_sos/src/services/firestore_database_service.dart';

class DetailsScreen extends StatelessWidget {
  final Service service;

  const DetailsScreen({Key? key, required this.service}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppBar(title: service.title),
      body: StreamBuilder<List<Resource>>(
        stream: FirestoreDatabaseService().resourcesStream(service.route),
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
              SizedBox(
                height: 20,
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
      ),
    );
  }
}
