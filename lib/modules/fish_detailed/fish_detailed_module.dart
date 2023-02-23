import 'package:animal_crossing/commons/api/api_endpoints.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/blocs/fish_bloc/fish_bloc.dart';
import 'package:animal_crossing/modules/fish_detailed/repositories/fish_repository.dart';
import 'package:animal_crossing/modules/fish_detailed/repositories/mappers/fish_mapper.dart';
import 'package:animal_crossing/modules/fish_detailed/views/fish_view.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_bloc_bind/modular_bloc_bind.dart';

class FishDetailedModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind(
          (i) => FishRepository(
            endpoint: ApiEndpoints.fishEndpoint,
            mapper: FishMapper(),
            apiBase: i.get(),
          ),
        ),
        BlocBind.singleton(
          (i) => FishBloc(
            fishRepository: i.get(),
          ),
        ),
      ];
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          "/",
          child: (_, __) => FishView(
            bloc: Modular.get<FishBloc>(),
          ),
        )
      ];
}
