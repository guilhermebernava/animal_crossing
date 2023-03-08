import 'package:animal_crossing/modules/sea_monster_detailed/views/sea_monster_view.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SeaMonsterDetailedModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          "/",
          child: (_, __) => const SeaMonsterView(),
        ),
      ];
}
