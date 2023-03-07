import 'package:animal_crossing/commons/api/api_endpoints.dart';
import 'package:animal_crossing/commons/views/image_fullscreen.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/blocs/bug_bloc/bug_bloc.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/entities/bug.dart';
import 'package:animal_crossing/modules/bug_detailed/domain/use_cases/bug_use_case.dart';
import 'package:animal_crossing/modules/bug_detailed/infra/mappers/bug_mapper.dart';
import 'package:animal_crossing/modules/bug_detailed/infra/repositories/bug_repository.dart';
import 'package:animal_crossing/modules/bug_detailed/views/bug_detailed_view.dart';

import 'package:animal_crossing/modules/bug_detailed/views/bug_view.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_bloc_bind/modular_bloc_bind.dart';

class BugDetailedModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.singleton(
          (i) => BugRepository(
            apiBase: i.get(),
            endpoint: ApiEndpoints.bugEndpoint,
            mapper: BugMapper(),
          ),
        ),
        BlocBind.singleton(
          (i) => BugBloc(
            bugRepository: i.get(),
          ),
        ),
        Bind.singleton(
          (i) => BugUseCase(
            bugBloc: i.get(),
          ),
        )
      ];
  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          "/",
          child: (_, __) => BugView(
            useCase: Modular.get(),
          ),
        ),
        ChildRoute(
          BugDetailedView.route,
          child: (_, args) => BugDetailedView(
            bug: args.data as Bug,
          ),
        ),
        ChildRoute(
          ImageFullscreen.route,
          child: (_, args) => ImageFullscreen(
            source: args.data,
          ),
        )
      ];
}
