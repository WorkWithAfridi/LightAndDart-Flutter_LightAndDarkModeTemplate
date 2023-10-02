import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:light_and_dark/App/Bloc/ThemeBloc/theme_bloc.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Light and Dark",
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Hello World",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 6,
            ),
            BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Is light mode active: ",
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    Switch.adaptive(
                      value: state.isLightTheme,
                      onChanged: (value) {
                        context.read<ThemeBloc>().add(ToogleTheme());
                      },
                    ),
                  ],
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
