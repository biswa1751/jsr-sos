import 'package:flutter/material.dart';
import 'package:jsr_sos/src/global_components/loading_card.dart';
import 'package:jsr_sos/src/screens/error_info_screen/error_info_screen.dart';

class AppStreamBuilder<T> extends StatelessWidget {
  final Stream<T> stream;
  final Function(T) builder;
  const AppStreamBuilder(
      {Key? key, required this.stream, required this.builder})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<T>(
      stream: stream,
      builder: (_, snapshot) {
        if (snapshot.hasError) {
          return ErrorInfoScreen(
            errorMessage: snapshot.error,
            trace: snapshot.stackTrace,
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return LoadingCard();
        }
        if (!snapshot.hasData) {
          return Text('Empty');
        }
        print(snapshot.data);
        return builder(snapshot.data!);
      },
    );
  }
}
