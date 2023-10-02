part of 'theme_bloc.dart';

class ThemeState extends Equatable {
  ThemeState({
    required this.isLightTheme,
  });

  bool isLightTheme;

  @override
  List<Object> get props => [
        isLightTheme,
      ];
}
