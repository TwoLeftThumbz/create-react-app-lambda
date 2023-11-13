import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k61_screen/models/k61_model.dart';
part 'k61_event.dart';
part 'k61_state.dart';

/// A bloc that manages the state of a K61 according to the event that is dispatched to it.
class K61Bloc extends Bloc<K61Event, K61State> {
  K61Bloc(K61State initialState) : super(initialState) {
    on<K61InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K61InitialEvent event,
    Emitter<K61State> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
    ));
  }
}
