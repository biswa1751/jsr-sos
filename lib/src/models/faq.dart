class Faq {
  final String? question, answer;

  Faq({
    required this.question,
    required this.answer,
  });
  factory Faq.fromMap(Map<String, dynamic>? data, String documentId) {
    if (data == null) {
      throw StateError('missing data for faqId: $documentId');
    }
    final question = data['question'] as String?;
    final answer = data['answer'] as String?;

    return Faq(
      answer: answer,
      question: question,
    );
  }
}
