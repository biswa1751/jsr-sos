import 'package:flutter/material.dart';
import 'package:jsr_sos/src/constants/colors.dart';
import 'package:jsr_sos/src/constants/theme.dart';
import 'package:jsr_sos/src/models/faq.dart';

class QnaCard extends StatelessWidget {
  final Faq faq;

  const QnaCard({Key? key, required this.faq}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 10),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.greyd6),
          borderRadius: BorderRadius.circular(5)),
      child: ExpansionTile(
        expandedAlignment: Alignment.topLeft,
        maintainState: true,
        childrenPadding: const EdgeInsets.all(15),
        tilePadding: const EdgeInsets.symmetric(horizontal: 15),
        title: Text(
          faq.question ?? 'Question',
          style: AppTheme.textTheme.h412Medium,
        ),
        children: [
          Text(
            faq.answer ?? 'Answer',
            style: AppTheme.textTheme.h410Regular,
          ),
        ],
      ),
    );
  }
}
