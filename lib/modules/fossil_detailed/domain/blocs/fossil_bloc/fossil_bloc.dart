import 'package:animal_crossing/commons/extensions/dartz_extensions.dart';
import 'package:animal_crossing/modules/fossil_detailed/domain/blocs/fossil_bloc/fossil_events.dart';
import 'package:animal_crossing/modules/fossil_detailed/domain/blocs/fossil_bloc/fossil_states.dart';
import 'package:animal_crossing/modules/fossil_detailed/domain/entities/fossil.dart';
import 'package:animal_crossing/modules/fossil_detailed/domain/interfaces/repository/i_fossil_repository.dart';
import 'package:bloc/bloc.dart';

class FossilBloc extends Bloc<FossilEvents, FossilStates> {
  final IFossilRepository fossilRepository;
  final List<Fossil> fossils = [];

  FossilBloc({
    required this.fossilRepository,
  }) : super(FossilLoading()) {
    on<FossilClear>((_, emit) {
      emit(Fossils(fossils: fossils));
    });

    on<FossilGetAll>((event, emit) async {
      emit(FossilLoading());
      final result = await fossilRepository.getAllFossils();

      if (result.isLeft()) {
        emit(FossilError());
        return;
      }

      fossils.clear();
      fossils.addAll(result.right().reversed.toList());

      emit(
        Fossils(
          fossils: result.right().reversed.toList(),
        ),
      );
    });

    on<FossilGetByName>(
      (event, emit) async {
        emit(FossilLoading());
        final result = await fossilRepository.getFossilByName(event.name);

        if (result.isLeft()) {
          emit(FossilError());
          return;
        }

        fossils.clear();
        fossils.addAll([result.right()]);

        emit(
          Fossils(
            fossils: [result.right()],
          ),
        );
      },
    );

    on<FossilSearch>(
      (event, emit) async {
        emit(FossilLoading());
        final list = fossils
            .where((element) => element.name.contains(event.text))
            .toList();

        emit(
          Fossils(
            fossils: list,
          ),
        );
      },
    );
  }
}
