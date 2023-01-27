import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moneymanager/features/home/home.dart';
import 'package:moneymanager/router/router.dart';

import 'splash_event.dart';

export 'splash_event.dart';

class SplashBloc extends Bloc<SplashEvent, bool> {
  SplashBloc({
    required ApplicationRouter appRouter,
  })  : _appRouter = appRouter,
        super(false) {
    on<AnimationCompletedEvent>(_onAnimationCompletedEvent);
  }

  final ApplicationRouter _appRouter;

  Future<void> _onAnimationCompletedEvent(
      AnimationCompletedEvent event, Emitter<bool> emit) async {
    _appRouter.replace(Home.page());
    emit(state);
  }
}
