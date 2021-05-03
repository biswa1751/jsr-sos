import 'dart:async';
import 'dart:developer';

import 'package:jsr_sos/src/constants/firestore_paths.dart';
import 'package:jsr_sos/src/models/test_model.dart';
import 'package:jsr_sos/src/services/firestore_service.dart';

String documentIdFromCurrentDate() => DateTime.now().toIso8601String();

class FirestoreDatabaseService {
  final _service = FirestoreService.instance;

  Future<void> setData(TestModel testModel) => _service.setData(
        path: '',
        data: testModel.toMap(),
      );

  Future<void> deleteData(TestModel testModel) async {
    // delete job
    await _service.deleteData(path: '');
  }

  Stream<TestModel> dataStream({required String testModelId}) =>
      _service.documentStream(
        path: '',
        builder: (data, documentId) => TestModel.fromMap(data, documentId),
      );

  Stream<List<TestModel>> datasStream() => _service.collectionStream(
        path: '',
        builder: (data, documentId) => TestModel.fromMap(data, documentId),
      );
  Stream<List<TestModel>> servicesStream() => _service.collectionStream(
        path: FireStorePaths.services,
        builder: (data, documentId) {
          log(data.toString());
          return TestModel.fromMap(data, documentId);
        },
      );
}
