import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k34_screen/models/k34_model.dart';
part 'k34_event.dart';
part 'k34_state.dart';

/// A bloc that manages the state of a K34 according to the event that is dispatched to it.
class K34Bloc extends Bloc<K34Event, K34State> {
  K34Bloc(K34State initialState) : super(initialState) {
    on<K34InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K34InitialEvent event,
    Emitter<K34State> emit,
  ) async {
    emit(state.copyWith(
      kingTChallaController: TextEditingController(),
      dateController: TextEditingController(),
    ));
  }
}
