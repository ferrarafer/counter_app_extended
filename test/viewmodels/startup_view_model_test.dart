import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:starter_app/app/app.router.dart';
import 'package:starter_app/ui/views/startup/startup_view_model.dart';

import '../test_helper.dart';

void main() {
  group('StartupViewmodelTest -', () {
    setUp(() => registerServices());
    tearDown(() => unregisterServices());

    group('initialise -', () {
      test('Should notify listeners', () async {
        final model = StartupViewModel();

        var called = false;
        model.addListener(() {
          called = true;
        });
        await model.initialise();

        expect(called, isTrue);
      });
    });

    group('navigateToCounter -', () {
      test('Should navigate to CustomerView with NavigationService', () async {
        final navigationService = getAndRegisterNavigationServiceMock();
        final model = StartupViewModel();

        await model.navigateToCounter();

        verify(navigationService.navigateTo(Routes.counterView));
      });
    });
  });
}
