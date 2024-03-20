import 'package:bloc_side_effect/side_effect_bloc.dart';
import 'package:flutter/material.dart';
import 'package:bloc_tests/features/home/bloc/home_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilderWithSideEffects<HomeBloc, HomeState, HomeSideEffect>(
      sideEffectsListener: (context, sideEffect) {
        sideEffect.map(
          error: (sideEffect) {
            showTopSnackBar(
              Overlay.of(context),
              CustomSnackBar.error(message: sideEffect.message),
            );
          },
        );
      },
      builder: (context, state) {
        final bloc = context.read<HomeBloc>();
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text(state.stateName),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () => bloc.add(const HomeEvent.initialize()),
                child: const Text('Init'),
              ),
              const SizedBox(width: 12.0),
              FloatingActionButton(
                onPressed: () => bloc.add(const HomeEvent.throwError()),
                child: const Text('Error'),
              ),
            ],
          ),
        );
      },
    );
  }
}
