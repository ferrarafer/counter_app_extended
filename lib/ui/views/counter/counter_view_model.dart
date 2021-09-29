import 'package:stacked/stacked.dart';
import 'package:starter_app/app/app.logger.dart';

class CounterViewModel extends BaseViewModel {
  final _log = getLogger('CounterViewModel');

  final int initialValue;
  CounterViewModel({
    this.initialValue = 5,
  }) : _counter = initialValue;

  int _counter;

  int get counter => _counter;

  void increment() {
    _log.i('counter value:$counter');
    _counter++;
    notifyListeners();
  }
}
