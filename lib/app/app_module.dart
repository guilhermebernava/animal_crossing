import 'package:animal_crossing/commons/api/api_base.dart';
import 'package:animal_crossing/commons/api/api_endpoints.dart';
import 'package:animal_crossing/commons/app_routes.dart';
import 'package:animal_crossing/modules/bug_detailed/bug_detailed_module.dart';
import 'package:animal_crossing/modules/fish_detailed/fish_detailed_module.dart';
import 'package:animal_crossing/modules/fossil_detailed/fossil_detailed_module.dart';
import 'package:animal_crossing/modules/home/home_module.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/sea_monster_detailed_module.dart';
import 'package:animal_crossing/modules/splash/views/splash.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind(
          (i) => ApiBase(
            baseUrl: ApiEndpoints.base,
          ),
        )
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          AppRoutes.splash,
          child: (_, __) => const SplashView(),
        ),
        ModuleRoute(
          AppRoutes.homeModule,
          module: HomeModule(),
          transition: TransitionType.fadeIn,
        ),
        ModuleRoute(
          AppRoutes.fishDetailed,
          module: FishDetailedModule(),
          transition: TransitionType.fadeIn,
        ),
        ModuleRoute(
          AppRoutes.bugDetailed,
          module: BugDetailedModule(),
          transition: TransitionType.fadeIn,
        ),
        ModuleRoute(
          AppRoutes.seaMonsterDetailed,
          module: SeaMonsterDetailedModule(),
          transition: TransitionType.fadeIn,
        ),
        ModuleRoute(
          AppRoutes.fossilDetailed,
          module: FossilDetailedModule(),
          transition: TransitionType.fadeIn,
        ),
      ];
}
