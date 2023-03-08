import 'package:animal_crossing/commons/extensions/dartz_extensions.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/blocs/fish_bloc/fish_events.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/blocs/fish_bloc/fish_states.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/entities/fish.dart';
import 'package:animal_crossing/modules/fish_detailed/domain/interfaces/repositories/i_fish_repository.dart';
import 'package:bloc/bloc.dart';

class FishBloc extends Bloc<FishEvents, FishStates> {
  final IFishRepository fishRepository;
  final List<Fish> fishes = [];

  FishBloc({
    required this.fishRepository,
  }) : super(FishLoading()) {
    on<FishClear>((_, emit) {
      emit(Fishes(fishes: fishes));
    });

    on<FishGetAll>((event, emit) async {
      emit(FishLoading());
      final result = await fishRepository.getAllFishs();

      if (result.isLeft()) {
        emit(FishError());
        return;
      }

      fishes.clear();
      fishes.addAll(result.right().reversed.toList());

      emit(
        Fishes(
          fishes: result.right().reversed.toList(),
        ),
      );
    });

    on<FishGetById>(
      (event, emit) async {
        emit(FishLoading());
        final result = await fishRepository.getFishById(event.id);

        if (result.isLeft()) {
          emit(FishError());
          return;
        }

        fishes.clear();
        fishes.addAll([result.right()]);

        emit(
          Fishes(
            fishes: [result.right()],
          ),
        );
      },
    );

    on<FishSearch>(
      (event, emit) async {
        emit(FishLoading());
        final list = fishes
            .where((element) => element.name.contains(event.text))
            .toList();

        emit(
          Fishes(
            fishes: list,
          ),
        );
      },
    );
  }
}
