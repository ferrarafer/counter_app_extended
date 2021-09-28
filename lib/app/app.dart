import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:starter_app/ui/views/counter/counter_view.dart';
import 'package:starter_app/ui/views/startup/startup_view.dart';

@StackedApp(
  routes: [
    CupertinoRoute(page: StartupView, initial: true),
    CupertinoRoute(page: CounterView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
  logger: StackedLogger(),
)
class App {}
