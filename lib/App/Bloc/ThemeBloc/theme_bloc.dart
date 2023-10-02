import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final String _modeKey = "isLightMode";
  ThemeBloc()
      : super(
          ThemeState(
            isLightTheme: true,
          ),
        ) {
    on<GetThemeState>(_getThemeState);
    on<ToogleTheme>(_tootleTheme);
  }

  FutureOr<void> _tootleTheme(event, emit) async {
    bool mode = !state.isLightTheme;
    emit(
      ThemeState(
        isLightTheme: mode,
      ),
    );
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(_modeKey, mode);
  }

  FutureOr<void> _getThemeState(event, emit) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? mode = prefs.getBool(_modeKey);
    if (mode == null) {
      prefs.setBool(_modeKey, true);
      mode = true;
    }
    emit(
      ThemeState(
        isLightTheme: mode,
      ),
    );
  }
}
