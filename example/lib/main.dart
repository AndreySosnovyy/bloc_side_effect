import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc_side_effect/side_effect_bloc.dart';
import 'package:flutter_bloc_side_effect_example/my_bloc.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyView());
  }
}

final bloc = MyBloc();

class MyView extends StatelessWidget {
  const MyView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumerWithSideEffects<MyBloc, MyState, MySideEffect>(
      bloc: bloc,
      sideEffectsListener: (context, sideEffect) {
        sideEffect.map(
          error: (sideEffect) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(sideEffect.message)),
            );
          },
        );
      },
      listener: (_, state) => log(state.stateName),
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: Text(state.stateName)),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () => bloc.add(const MyEvent.throwError()),
                child: const Text('Error'),
              ),
            ],
          ),
        );
      },
    );
  }
}
