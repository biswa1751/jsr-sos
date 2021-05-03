// manage all the providers
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:jsr_sos/src/constants/firestore_paths.dart';
import 'package:jsr_sos/src/models/resource.dart';
import 'package:jsr_sos/src/services/firestore_database_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppProviders {
  final doctorsProvider = FutureProvider<List<Resource>>((_) async {
    final event = await FirebaseFirestore.instance
        .collection(FireStorePaths.doctors)
        .get();
    final v = event.docs.map((e) => Resource.fromMap(e.data(), e.id)).toList();
    log('Found :${v.toString()}');
    return v;
  });
}
