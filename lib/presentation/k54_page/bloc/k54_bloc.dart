import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/k54_page/models/k54_model.dart';
part 'k54_event.dart';
part 'k54_state.dart';

/// A bloc that manages the state of a K54 according to the event that is dispatched to it.
class K54Bloc extends Bloc<K54Event, K54State> {
  K54Bloc(K54State initialState) : super(initialState) {
    on<K54InitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<K54State> emit,
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
    K54InitialEvent event,
    Emitter<K54State> emit,
  ) async {
    emit(state.copyWith(
      cellGeneralController: TextEditingController(),
      emailController: TextEditingController(),
    ));
    emit(state.copyWith(
        k54ModelObj: state.k54ModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
