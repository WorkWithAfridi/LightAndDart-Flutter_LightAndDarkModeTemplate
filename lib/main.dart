import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:light_and_dark/App/Bloc/ThemeBloc/theme_bloc.dart';
import 'package:light_and_dark/App/View/ScreenOne.dart';

import 'App/Style/ThemeFile.dart';

void main(List<String> args) {
  runApp(const LightAndDarkApp());
}

class LightAndDarkApp extends StatelessWidget {
  const LightAndDarkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            themeMode: state.isLightTheme ? ThemeMode.light : ThemeMode.dark,
            theme: state.isLightTheme ? lightTheme : darkTheme,
            home: const ScreenOne(),
          );
        },
      ),
    );
  }
}
