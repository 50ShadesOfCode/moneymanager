import 'package:get_it/get_it.dart';
import 'package:moneymanager/router/router.dart';

final AppDI appDI = AppDI();
final GetIt appLocator = GetIt.instance;

class AppDI {
  void initDependencies() {
    final ApplicationRouter appRouter = ApplicationRouter();
    appLocator.registerSingleton<ApplicationRouter>(appRouter);
    appLocator.registerSingleton<AppRouteInformationParser>(
      AppRouteInformationParser(),
    );
  }
}
