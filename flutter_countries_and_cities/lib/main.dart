import 'package:flutter/material.dart';

import 'src/core/data/constants/constants.dart';
import 'src/core/theme/light_theme.dart';
import 'src/modules/cities/presenter/pages/pages.dart';
import 'src/modules/countries/presenter/pages/pages.dart';
import 'src/modules/splash_screen/presenter/page/page.dart';
import 'src/modules/states/presenter/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final Map<String, WidgetBuilder> appRoutes = {
  ConfigRouteConst.splashRouter: (BuildContext context) => const SplashScreenPage(),
  ConfigRouteConst.countriesRouter: (BuildContext context) => const CountriesPage(),
  ConfigRouteConst.statesRouter: (BuildContext context) => const StatesPage(),
  ConfigRouteConst.citiesRouter: (BuildContext context) => const CitiesPage(),
};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Countries & Cities App',
      theme: lightTheme(),
      initialRoute: ConfigRouteConst.splashRouter,
      navigatorKey: navigatorKey,
      routes: appRoutes,
    );
  }
}
