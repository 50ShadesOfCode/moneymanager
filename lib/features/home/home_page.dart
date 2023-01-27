import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moneymanager/router/router.dart';

import 'bloc/home_bloc.dart';
import 'home_view.dart';

class HomePage extends PageWithScaffoldKey<dynamic> {
  @override
  Route<dynamic> createRoute(BuildContext context) =>
      MaterialPageRoute<dynamic>(
        settings: this,
        builder: (BuildContext context) => BlocProvider<HomeBloc>(
          create: (context) => HomeBloc(),
          child: const HomeView(),
        ),
      );
}
