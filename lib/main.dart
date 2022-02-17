import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc_food/food_cat_cubit.dart';
import 'presentation/pages/main_menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    late String selectedCategory;
    return MultiBlocProvider(
      providers: [
        BlocProvider<FoodCategoryCubit>(
          create: (foodCategoryCubitContext) => FoodCategoryCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Astro Interview',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.deepOrange,
          // secondaryHeaderColor: Colors.black,
          appBarTheme: const AppBarTheme(
            elevation: 0,
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
          ),
        ),
        home:
            // const MainMenuPage(),
            const MainMenuPage(title: 'Menu'),
      ),
    );
  }
}
