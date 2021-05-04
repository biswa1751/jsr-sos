import 'package:flutter/material.dart';
import 'package:jsr_sos/src/constants/assets_urls.dart';
import 'package:jsr_sos/src/global_components/app_stream_builder.dart';
import 'package:jsr_sos/src/models/faq.dart';
import 'package:jsr_sos/src/screens/home_screen/faqs_screen/local_components/qna_card.dart';
import 'package:jsr_sos/src/services/firestore_database_service.dart';

class FaqsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(height: 20),
        AppStreamBuilder<List<Faq>>(
          stream: FirestoreDatabaseService().faqsStream(),
          builder: (faqs) {
            return Column(
              children: faqs.map((e) => QnaCard(faq: e)).toList(),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.network(
            AppNetworkImages.vaccineImageUrl,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
        ),
      ],
    );
  }
}
