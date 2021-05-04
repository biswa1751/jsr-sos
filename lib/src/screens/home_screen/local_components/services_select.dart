import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:jsr_sos/src/constants/colors.dart';
import 'package:jsr_sos/src/constants/theme.dart';
import 'package:jsr_sos/src/global_components/loading_card.dart';
import 'package:jsr_sos/src/models/service.dart';
import 'package:jsr_sos/src/screens/details_screen/details_screen.dart';
import 'package:jsr_sos/src/screens/error_info_screen/error_info_screen.dart';
import 'package:jsr_sos/src/services/firestore_database_service.dart';

class ServicesSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Service>>(
      stream: FirestoreDatabaseService().servicesStream(),
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
        return GridView.count(
          childAspectRatio: 0.8,
          crossAxisCount: 3,
          crossAxisSpacing: 11,
          mainAxisSpacing: 7.5,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: snapshot.data!
              .map(
                (e) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => DetailsScreen(service: e),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 10,
                    shadowColor: AppColors.black.withOpacity(0.15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CachedNetworkImage(imageUrl: e.iconUrl!),
                        SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 13),
                          child: Text(
                            e.title ?? 'Title',
                            style: AppTheme.textTheme.h412Medium,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        );
      },
    );
  }
}
