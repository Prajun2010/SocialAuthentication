import 'package:auto_route/annotations.dart';

import '../../../features/authentication/presentation/pages/authentication_page.dart';
import '../../../features/authentication/presentation/pages/verified_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: AuthenticationPage, initial: true),
    AutoRoute(page: VerifiedPage),
  ],
)
class $AppRouter {}
