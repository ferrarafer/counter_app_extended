import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:starter_app/app/app.locator.dart';
import 'package:starter_app/app/app.logger.dart';
import 'package:starter_app/app/app.router.dart';

class StartupViewModel extends BaseViewModel {
  final _log = getLogger('StartupViewModel');
  final _navigationService = locator<NavigationService>();

  Future<void> initialise() async {
    _log.i('');
    await runBusyFuture(
      Future.delayed(const Duration(seconds: 5)),
    );
  }

  Future<void> navigateToCounter() async {
    _log.i('Navigate to CounterView');
    _navigationService.navigateTo(Routes.counterView);
  }
}
