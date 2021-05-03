import 'package:jsr_sos/src/screens/home_screen/home_screen.dart';

// manage the app routes
class AppRouteService {
  static final initialRoute = HomeScreen.routeName;
  static final routes = {
    HomeScreen.routeName: (_) => HomeScreen(),
  };
}
