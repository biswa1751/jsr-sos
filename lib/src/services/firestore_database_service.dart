import 'dart:async';
import 'dart:developer';

import 'package:jsr_sos/src/constants/firestore_paths.dart';
import 'package:jsr_sos/src/models/faq.dart';
import 'package:jsr_sos/src/models/resource.dart';
import 'package:jsr_sos/src/models/service.dart';
import 'package:jsr_sos/src/services/firestore_service.dart';

String documentIdFromCurrentDate() => DateTime.now().toIso8601String();

class FirestoreDatabaseService {
  final _service = FirestoreService.instance;

  Stream<Resource> resourceStream({required String testModelId}) =>
      _service.documentStream(
        path: '',
        builder: (data, documentId) => Resource.fromMap(data, documentId),
      );

  Stream<List<Resource>> resourcesStream(String source) =>
      _service.collectionStream(
        path: FireStorePaths.sourcesURl(source),
        builder: (data, documentId) => Resource.fromMap(data, documentId),
      );
  Stream<List<Service>> servicesStream() => _service.collectionStream(
        path: FireStorePaths.services,
        builder: (data, documentId) {
          return Service.fromMap(data, documentId);
        },
      );
  Stream<List<Resource>> doctorsStream() => _service.collectionStream(
        path: FireStorePaths.doctors,
        builder: (data, documentId) {
          return Resource.fromMap(data, documentId);
        },
      );
  Stream<List<Faq>> faqsStream() => _service.collectionStream(
        path: FireStorePaths.faqs,
        builder: (data, documentId) {
          return Faq.fromMap(data, documentId);
        },
      );
}
