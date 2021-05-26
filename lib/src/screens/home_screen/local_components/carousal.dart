import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:jsr_sos/src/global_components/loading_card.dart';
import 'package:jsr_sos/src/helpers/app_helpers.dart';
import 'package:jsr_sos/src/models/banner.dart';
import 'package:jsr_sos/src/screens/error_info_screen/error_info_screen.dart';
import 'package:jsr_sos/src/services/firestore_database_service.dart';

class Carousel extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<AppBanner>>(
        stream: FirestoreDatabaseService().bannerStream(),
        builder: (context, snapshot) {
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
          final banners = snapshot.data ?? [];
          final imageSliders = banners
              .map((e) => Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Center(child: CachedNetworkImage(imageUrl: e.imageUrl!)),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40.0),
                        child: ElevatedButton(
                          onPressed: () => AppHelpers.launcUrl(e.link!),
                          style:
                              ElevatedButton.styleFrom(primary: e.buttonColor),
                          child: Text(e.buttonText ?? 'Open'),
                        ),
                      )
                    ],
                  ))
              .toList();
          return Column(
            children: [
              CarouselSlider(
                items: imageSliders,
                options: CarouselOptions(
                  enableInfiniteScroll: imageSliders.length > 1,
                  autoPlay: imageSliders.length > 1,
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                ),
              ),
            ],
          );
        });
  }
}
