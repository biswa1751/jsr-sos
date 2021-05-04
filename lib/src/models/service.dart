
class Service {
  final String route;
  final String? title, iconUrl;

  Service({
    required this.route,
    required this.title,
    required this.iconUrl,
  });
  factory Service.fromMap(Map<String, dynamic>? data, String documentId) {
    if (data == null) {
      throw StateError('missing data for jobId: $documentId');
    }
    final title = data['title'] as String?;
    final iconUrl = data['iconUrl'] as String?;
    final route = documentId;

    return Service(
      iconUrl: iconUrl,
      title: title,
      route: route,
    );
  }
}
