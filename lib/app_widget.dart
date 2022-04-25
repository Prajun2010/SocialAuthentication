import 'package:flutter/material.dart';
import 'package:social_auth/core/presentation/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  final appRouter = AppRouter();
  AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(),
    );
  }
}
