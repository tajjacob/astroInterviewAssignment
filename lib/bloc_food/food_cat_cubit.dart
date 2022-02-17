import 'package:bloc/bloc.dart';

part 'food_cat_state.dart';

class FoodCategoryCubit extends Cubit<ChooseState> {
  FoodCategoryCubit() : super(ChooseState(selectCategory: 'Beef'));

  void chooseCategory() => emit(ChooseState(selectCategory: ''));
}
