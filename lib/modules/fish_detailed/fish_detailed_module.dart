import 'package:animal_crossing/modules/fish_detailed/views/fish_view.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FishDetailedModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          "/",
          child: (_, __) => const FishView(),
        )
      ];
}
