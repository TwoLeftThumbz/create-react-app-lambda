import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/four_screen/models/four_model.dart';
part 'four_event.dart';
part 'four_state.dart';

/// A bloc that manages the state of a Four according to the event that is dispatched to it.
class FourBloc extends Bloc<FourEvent, FourState> {
  FourBloc(FourState initialState) : super(initialState) {
    on<FourInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<FourState> emit,
  ) {
    emit(state.copyWith(
      square: event.value,
    ));
  }

  _onInitialize(
    FourInitialEvent event,
    Emitter<FourState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
      passwordController: TextEditingController(),
      square: false,
    ));
  }
}
