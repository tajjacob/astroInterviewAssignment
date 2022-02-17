part of 'food_bloc.dart';

// @immutable
abstract class FoodEvent extends Equatable {
  const FoodEvent();

  @override
  List<Object> get props => [];
}

class LoadFood extends FoodEvent {
  final List<Categories> categories;

  const LoadFood({this.categories = const <Categories>[]});

  @override
  List<Object> get props => [categories];
}
