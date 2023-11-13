import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k59_screen/models/k59_model.dart';
part 'k59_event.dart';
part 'k59_state.dart';

/// A bloc that manages the state of a K59 according to the event that is dispatched to it.
class K59Bloc extends Bloc<K59Event, K59State> {
  K59Bloc(K59State initialState) : super(initialState) {
    on<K59InitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<K59State> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  _onInitialize(
    K59InitialEvent event,
    Emitter<K59State> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
    ));
    emit(state.copyWith(
        k59ModelObj: state.k59ModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
