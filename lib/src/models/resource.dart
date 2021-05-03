import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
class Resource extends Equatable {
  const Resource({
    this.address,
    this.isVerified,
    this.verificationDate,
    this.name,
    this.remark,
  });
  final String? name, remark, address;
  final bool? isVerified;
  final Timestamp? verificationDate;
  @override
  List<Object?> get props =>
      [name, remark, address, isVerified, verificationDate];

  @override
  bool get stringify => true;

  factory Resource.fromMap(Map<String, dynamic>? data, String documentId) {
    if (data == null) {
      throw StateError('missing data for jobId: $documentId');
    }
    final name = data['name'] as String?;
    final remark = data['remark'] as String?;
    final address = data['address'] as String?;
    final isVerified = data['is_verified'] as bool?;
    final verificationData = data['verification_date'] as Timestamp?;
    if (name == null) {
      throw StateError('missing name for jobId: $documentId');
    }
    return Resource(
      name: name,
      remark: remark,
      address: address,
      isVerified: isVerified,
      verificationDate: verificationData,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }
}