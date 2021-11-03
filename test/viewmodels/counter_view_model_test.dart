import 'package:flutter_test/flutter_test.dart';
import 'package:starter_app/ui/views/counter/counter_view_model.dart';

import '../test_helper.dart';

void main() {
  group('CounterViewmodelTest -', () {
    setUp(() => registerServices());
    tearDown(() => unregisterServices());

    group('increment -', () {
      test(
          'When called once and initialValue is 0, should increment counter value to 1',
          () async {
        final model = CounterViewModel(initialValue: 0);

        model.increment();

        expect(model.counter, 1);
      });

      test(
          'When called 3 times and initialValue is 5, should increment counter value to 8',
          () async {
        final model = CounterViewModel(initialValue: 5);

        model.increment();
        model.increment();
        model.increment();

        expect(model.counter, 8);
      });

      test('Should notify listeners', () async {
        final model = CounterViewModel();

        var called = false;
        model.addListener(() {
          called = true;
        });
        model.increment();

        expect(called, isTrue);
      });
    });
  });
}
