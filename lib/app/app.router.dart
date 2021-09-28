// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../ui/views/counter/counter_view.dart';
import '../ui/views/startup/startup_view.dart';

class Routes {
  static const String startupView = '/';
  static const String counterView = '/counter-view';
  static const all = <String>{
    startupView,
    counterView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.startupView, page: StartupView),
    RouteDef(Routes.counterView, page: CounterView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    StartupView: (data) {
      return CupertinoPageRoute<CupertinoRoute<dynamic>>(
        builder: (context) => const StartupView(),
        settings: data,
      );
    },
    CounterView: (data) {
      return CupertinoPageRoute<CupertinoRoute<dynamic>>(
        builder: (context) => const CounterView(),
        settings: data,
      );
    },
  };
}
