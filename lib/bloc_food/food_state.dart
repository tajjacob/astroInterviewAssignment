part of 'food_bloc.dart';

@immutable
abstract class FoodState extends Equatable {
  const FoodState();
  @override
  List<Object> get props => [];
}

class FoodLoading extends FoodState {}

class FoodLoaded extends FoodState {
  final List<Categories> categories;

  const FoodLoaded({this.categories = const <Categories>[]});

  @override
  List<Object> get props => [categories];
}
