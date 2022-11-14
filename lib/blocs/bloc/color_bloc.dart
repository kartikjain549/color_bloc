import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'color_bloc_event.dart';
part 'color_bloc_state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(ColorState.initial()) {
    on<ChangeColorEvent>((event, emit) {
      if (state.color == Colors.pink) {
        emit(
          ColorState(
            color: Colors.amber,
          ),
        );
      } else {
        emit(ColorState(color: Colors.pink));
      }
    });
  }
}
