import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './blocs/bloc/color_bloc.dart';
import 'blocs/bloc/color_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColorBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocBuilder<ColorBloc, ColorState>(
          builder: (context, state) {
            return Container(
              color: state.color,
              child: FloatingActionButton(
                onPressed: () {
                  context.read<ColorBloc>().add(ChangeColorEvent());
                  print('Color will Change');
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
