// manage all the providers
import 'package:jsr_sos/src/services/firestore_database_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppProviders {
  final databaseProvider = Provider<FirestoreDatabaseService>(
    (ref) {
      return FirestoreDatabaseService();
    },
  );
}
