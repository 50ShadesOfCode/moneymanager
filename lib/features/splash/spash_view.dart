import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/splash_bloc.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..forward();
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInCubic,
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          BlocProvider.of<SplashBloc>(context).add(AnimationCompletedEvent());
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeTransition(
        opacity: _animation,
        child: Column(
          children: const <Widget>[
            SizedBox(
              width: 100,
              height: 100,
              child: Image(
                image: AssetImage("appLogo.png"),
              ),
            ),
            Text("Welcome!"),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
