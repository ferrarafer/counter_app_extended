import 'package:mockito/annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:starter_app/app/app.locator.dart';

import 'test_helper.mocks.dart';

@GenerateMocks([], customMocks: [
  MockSpec<DialogService>(returnNullOnMissingStub: true),
  MockSpec<NavigationService>(returnNullOnMissingStub: true),
])
void registerServices() {
  locator.registerEnvironment();

  getAndRegisterDialogServiceMock();
  getAndRegisterNavigationServiceMock();
}

void unregisterServices() {
  locator.unregister<DialogService>();
  locator.unregister<NavigationService>();
}

MockDialogService getAndRegisterDialogServiceMock() {
  _removeRegistrationIfExists<DialogService>();
  var mock = MockDialogService();

  locator.registerSingleton<DialogService>(mock);
  return mock;
}

MockNavigationService getAndRegisterNavigationServiceMock() {
  _removeRegistrationIfExists<NavigationService>();
  var mock = MockNavigationService();

  locator.registerSingleton<NavigationService>(mock);
  return mock;
}

void _removeRegistrationIfExists<T extends Object>() {
  if (locator.isRegistered<T>()) {
    locator.unregister<T>();
  }
}
