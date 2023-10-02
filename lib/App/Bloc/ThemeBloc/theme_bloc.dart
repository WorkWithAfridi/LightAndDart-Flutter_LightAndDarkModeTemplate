import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(
          ThemeState(
            isLightTheme: true,
          ),
        ) {
    on<ToogleTheme>((event, emit) {
      emit(
        ThemeState(
          isLightTheme: !state.isLightTheme,
        ),
      );
    });
  }
}
