import 'package:flutter/material.dart';

class AppBanner {
  final String? buttonText, imageUrl, link;
  final Color buttonColor;
  AppBanner({
    this.link,
    required this.buttonColor,
    required this.buttonText,
    required this.imageUrl,
  });
  factory AppBanner.fromMap(Map<String, dynamic>? data, String documentId) {
    if (data == null) {
      throw StateError('missing data for faqId: $documentId');
    }
    final buttonText = data['button_text'] as String?;
    final imageUrl = data['imageUrl'] as String?;
    final link = data['link'] as String?;
    final colorString = data['button_color'] as String?;
    final colorStringData = colorString?.substring(1) ?? Colors.black;
    final color = Color(int.parse('0xFF$colorStringData'));
    return AppBanner(
      imageUrl: imageUrl,
      buttonText: buttonText,
      link: link,
      buttonColor: color,
    );
  }
}
