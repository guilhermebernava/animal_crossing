import 'package:animal_crossing/commons/api/api_endpoints.dart';
import 'package:animal_crossing/commons/views/image_fullscreen.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/blocs/sea_monster/sea_monster_bloc.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/domain/use_cases/sea_monster_use_case.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/infra/mappers/sea_monster_mapper.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/infra/repositories/sea_monster_repository.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/views/sea_monster_details_view.dart';
import 'package:animal_crossing/modules/sea_monster_detailed/views/sea_monster_view.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_bloc_bind/modular_bloc_bind.dart';

class SeaMonsterDetailedModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton(
          (i) => SeaMonsterRepository(
            apiBase: i.get(),
            endpoint: ApiEndpoints.seaMonsterEndpoint,
            mapper: SeaMonsterMapper(),
          ),
        ),
        BlocBind.singleton(
          (i) => SeaMonsterBloc(
            seaMonsterRepository: i.get(),
          ),
        ),
        Bind.singleton(
          (i) => SeaMonsterUseCase(
            bloc: i.get(),
            seaMonsterRepository: i.get(),
          ),
        )
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          "/",
          child: (_, __) => SeaMonsterView(
            useCase: Modular.get(),
          ),
        ),
        ChildRoute(
          SeaMonsterDetailsView.route,
          child: (_, args) => SeaMonsterDetailsView(
            seaMonster: args.data,
          ),
        ),
        ChildRoute(
          ImageFullscreen.route,
          child: (_, args) => ImageFullscreen(
            source: args.data,
          ),
        ),
      ];
}
