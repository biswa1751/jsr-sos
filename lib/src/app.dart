import 'package:flutter/material.dart';
import 'package:jsr_sos/src/constants/strings.dart';
import 'package:jsr_sos/src/constants/theme.dart';
import 'package:jsr_sos/src/services/app_route_service.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appTitle,
      theme: AppTheme.themeData,
      initialRoute: AppRouteService.initialRoute,
      routes: AppRouteService.routes,
    );
  }
}
