import 'dart:async';

import 'package:jsr_sos/src/constants/firestore_paths.dart';
import 'package:jsr_sos/src/models/resource.dart';
import 'package:jsr_sos/src/services/firestore_service.dart';

String documentIdFromCurrentDate() => DateTime.now().toIso8601String();

class FirestoreDatabaseService {
  final _service = FirestoreService.instance;

  Future<void> setResource(Resource testModel) => _service.setData(
        path: '',
        data: testModel.toMap(),
      );

  Future<void> deleteResource(Resource testModel) async {
    // delete job
    await _service.deleteData(path: '');
  }

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
  Stream<List<Resource>> servicesStream() => _service.collectionStream(
        path: FireStorePaths.services,
        builder: (data, documentId) {
          return Resource.fromMap(data, documentId);
        },
      );
  Stream<List<Resource>> doctorsStream() => _service.collectionStream(
        path: FireStorePaths.doctors,
        builder: (data, documentId) {
          return Resource.fromMap(data, documentId);
        },
      );
}
