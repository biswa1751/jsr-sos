import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:jsr_sos/src/constants/colors.dart';
import 'package:jsr_sos/src/constants/constants.dart';
import 'package:jsr_sos/src/constants/theme.dart';
import 'package:jsr_sos/src/screens/details_screen/details_screen.dart';

class ServicesSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.8,
      crossAxisCount: 3,
      crossAxisSpacing: 11,
      mainAxisSpacing: 7.5,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: AppConstants.services
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
                    CachedNetworkImage(imageUrl: e.iconUrl),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 13),
                      child: Text(
                        e.title,
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
  }
}
