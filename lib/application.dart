import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:moneymanager/router/router.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  ApplicationState createState() => ApplicationState();
}

class ApplicationState extends State<Application> {
  late final ApplicationRouter appRouter;
  late final AppRouteInformationParser appRouteInformationParser;

  @override
  void initState() {
    appRouter = appLocator.get<ApplicationRouter>();
    appRouteInformationParser = appLocator.get<AppRouteInformationParser>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: appRouter,
      routeInformationParser: appRouteInformationParser,
    );
  }
}
