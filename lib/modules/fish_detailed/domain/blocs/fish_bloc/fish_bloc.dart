import 'package:animal_crossing/commons/extensions/dartz_extensions.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/blocs/fish_bloc/fish_events.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/blocs/fish_bloc/fish_states.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/interfaces/repositories/i_fish_repository.dart';
import 'package:bloc/bloc.dart';

class FishBloc extends Bloc<FishEvents, FishStates> {
  final IFishRepository fishRepository;

  FishBloc({
    required this.fishRepository,
  }) : super(FishLoading()) {
    on<FishGetAll>((event, emit) async {
      final result = await fishRepository.getAllFishs();

      if (result.isLeft()) {
        emit(FishError());
        return;
      }

      emit(
        Fishes(
          fishes: result.right().reversed.toList(),
        ),
      );
    });

    on<FishGetById>(
      (event, emit) async {
        final result = await fishRepository.getFishById(event.id);

        if (result.isLeft()) {
          emit(FishError());
          return;
        }

        emit(
          Fishes(
            fishes: [result.right()],
          ),
        );
      },
    );
  }
}
