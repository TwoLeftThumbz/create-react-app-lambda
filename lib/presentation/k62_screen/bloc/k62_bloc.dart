import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k62_screen/models/k62_model.dart';
part 'k62_event.dart';
part 'k62_state.dart';

/// A bloc that manages the state of a K62 according to the event that is dispatched to it.
class K62Bloc extends Bloc<K62Event, K62State> {
  K62Bloc(K62State initialState) : super(initialState) {
    on<K62InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K62InitialEvent event,
    Emitter<K62State> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
    ));
  }
}
