import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:mi_primera_app/adopt_app/animal_model.dart';

part 'animal_event.dart';
part 'animal_state.dart';

class AnimalBloc extends Bloc<AnimalEvent, AnimalState> {
  //Cambiar el a .initial
  AnimalBloc() : super(AnimalState.initial()) {
    //Llamamos a los eventos que creamos abajo
    on<LoadAnimals>(_onLoadAnimals);
    on<ToggleFavorite>(_onToggleFavorite);
    on<ChangeFilter>(_onChangeFilter);
  }

  //Lo creamos el onLoad// Son los eventos que creamos
  void _onLoadAnimals(LoadAnimals event, Emitter<AnimalState> emit) async{

    //Estados que vamos a emitir
    emit(
      state.copyWith(pageStates: AnimalPageStates.loading)
    );

    //Logica
    try {
      await Future.delayed(const Duration(seconds: 4));
      emit(state.copyWith(pageStates: AnimalPageStates.success));
    } catch (e) {
      emit(state.copyWith(pageStates: AnimalPageStates.failure));
    }

  }

  void _onToggleFavorite(ToggleFavorite event, Emitter<AnimalState> emit){}

  void _onChangeFilter(ChangeFilter event, Emitter<AnimalState> emit){}

}
