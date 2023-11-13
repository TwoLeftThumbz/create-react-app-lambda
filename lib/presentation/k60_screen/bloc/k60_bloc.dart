import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k60_screen/models/k60_model.dart';
part 'k60_event.dart';
part 'k60_state.dart';

/// A bloc that manages the state of a K60 according to the event that is dispatched to it.
class K60Bloc extends Bloc<K60Event, K60State> {
  K60Bloc(K60State initialState) : super(initialState) {
    on<K60InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K60InitialEvent event,
    Emitter<K60State> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
    ));
  }
}
