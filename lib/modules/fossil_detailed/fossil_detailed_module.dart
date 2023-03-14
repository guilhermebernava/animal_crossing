import 'package:animal_crossing/commons/api/api_endpoints.dart';
import 'package:animal_crossing/modules/fossil_detailed/domain/blocs/fossil_bloc/fossil_bloc.dart';
import 'package:animal_crossing/modules/fossil_detailed/domain/use_cases/fossil_use_case.dart';
import 'package:animal_crossing/modules/fossil_detailed/infra/mappers/fossil_mapper.dart';
import 'package:animal_crossing/modules/fossil_detailed/infra/repositories/fossil_repository.dart';
import 'package:animal_crossing/modules/fossil_detailed/views/fossil_view.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_bloc_bind/modular_bloc_bind.dart';

class FossilDetailedModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        BlocBind.singleton(
          (i) => FossilBloc(
            fossilRepository: i.get(),
          ),
        ),
        Bind.singleton(
          (i) => FossilRepository(
            apiBase: i.get(),
            mapper: FossilMapper(),
            endpoint: ApiEndpoints.fossilEndpoint,
          ),
        ),
        Bind.singleton(
          (i) => FossilUseCase(
            bloc: i.get(),
          ),
        )
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          "/",
          child: (_, __) => FossilView(
            fossilUseCase: Modular.get(),
          ),
        ),
      ];
}
