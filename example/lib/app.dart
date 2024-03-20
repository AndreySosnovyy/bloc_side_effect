import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc_tests/features/home/bloc/home_bloc.dart';
import 'package:bloc_tests/features/home/view/home_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeView(),
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<HomeBloc>(create: (_) => HomeBloc()),
          ],
          child: (child ?? const SizedBox()),
        );
      },
    );
  }
}
