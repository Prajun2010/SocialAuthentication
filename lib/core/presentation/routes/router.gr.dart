// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../../features/authentication/presentation/pages/authentication_page.dart'
    as _i1;
import '../../../features/authentication/presentation/pages/verified_page.dart'
    as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    AuthenticationRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AuthenticationPage());
    },
    VerifiedRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.VerifiedPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(AuthenticationRoute.name, path: '/'),
        _i3.RouteConfig(VerifiedRoute.name, path: '/verified-page')
      ];
}

/// generated route for
/// [_i1.AuthenticationPage]
class AuthenticationRoute extends _i3.PageRouteInfo<void> {
  const AuthenticationRoute() : super(AuthenticationRoute.name, path: '/');

  static const String name = 'AuthenticationRoute';
}

/// generated route for
/// [_i2.VerifiedPage]
class VerifiedRoute extends _i3.PageRouteInfo<void> {
  const VerifiedRoute() : super(VerifiedRoute.name, path: '/verified-page');

  static const String name = 'VerifiedRoute';
}
