import 'package:stacked/stacked.dart';
import 'package:starter_app/app/app.logger.dart';

class CounterViewModel extends BaseViewModel {
  final _log = getLogger('CounterViewModel');

  late String _title;
  late int _counter;

  // String get title => _title;
  String get title {
    return _title;
  }

  int get counter => _counter;

  Future<void> initialise() async {
    _log.i('');
    _title = '';
    _counter = 0;
    notifyListeners();
  }

  void increment() {
    _counter++;
    notifyListeners();
  }
}
