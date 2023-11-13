import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k35_screen/models/k35_model.dart';
part 'k35_event.dart';
part 'k35_state.dart';

/// A bloc that manages the state of a K35 according to the event that is dispatched to it.
class K35Bloc extends Bloc<K35Event, K35State> {
  K35Bloc(K35State initialState) : super(initialState) {
    on<K35InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K35InitialEvent event,
    Emitter<K35State> emit,
  ) async {
    emit(state.copyWith(
      iconsController: TextEditingController(),
    ));
  }
}
