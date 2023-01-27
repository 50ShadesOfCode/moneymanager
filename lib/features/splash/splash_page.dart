import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moneymanager/features/splash/spash_view.dart';
import 'package:moneymanager/router/router.dart';

import 'bloc/splash_bloc.dart';

class SplashPage extends PageWithScaffoldKey<dynamic> {
  @override
  Route<dynamic> createRoute(BuildContext context) =>
      MaterialPageRoute<dynamic>(
        settings: this,
        builder: (BuildContext context) => BlocProvider<SplashBloc>(
          create: (_) => SplashBloc(
            appRouter: appLocator.get<ApplicationRouter>(),
          ),
          child: SafeArea(
            child: ScaffoldMessenger(
              key: scaffoldKey,
              child: const SplashView(),
            ),
          ),
        ),
      );
}
