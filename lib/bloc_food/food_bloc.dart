import 'package:astro_interview/models/food_categories.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'food_event.dart';
part 'food_state.dart';

class FoodBloc extends Bloc<FoodEvent, FoodState> {
  FoodBloc() : super(FoodLoading()) {
    on<LoadFood>(_loadFood);
  }

  void _loadFood(LoadFood event, Emitter<FoodState> emit) {
    emit(
      FoodLoaded(categories: event.categories),
    );
  }
}
