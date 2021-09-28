import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:starter_app/app/app.locator.dart';
import 'package:starter_app/app/app.router.dart';

Future<void> main() async {
  Logger.level = Level.verbose;

  try {
    WidgetsFlutterBinding.ensureInitialized();

    // Register all the models and services before the app starts
    setupLocator();

    runApp(const MyApp());
  } catch (e) {
    // ignore: avoid_print
    print('App failed to start. Probably the locator setup. ${e.toString()}');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => child!,
      initialRoute: Routes.startupView,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
      onGenerateRoute: StackedRouter().onGenerateRoute,
      title: 'StarterAppStacked',
    );
  }
}
