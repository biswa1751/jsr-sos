import 'package:jsr_sos/src/app.dart';
import 'package:jsr_sos/src/constants/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

void main() async {
  // //for white status bar with black icons
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
    statusBarColor: Colors.transparent,
  ));

  WidgetsFlutterBinding.ensureInitialized();

  //disable sentry in debug mode
  if (!kReleaseMode) {
    runApp(
      ProviderScope(child: MyApp()),
    );
  } else {
    await SentryFlutter.init(
      (options) {
        options.dsn = AppConstants.SENTRY_DSN;
      },
      appRunner: () => runApp(
        ProviderScope(child: MyApp()),
      ),
    );
  }
}
