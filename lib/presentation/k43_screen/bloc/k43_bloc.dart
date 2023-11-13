import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/buttonsmall_item_model.dart';
import 'package:bcc33_s_application1/presentation/k43_screen/models/k43_model.dart';
part 'k43_event.dart';
part 'k43_state.dart';

/// A bloc that manages the state of a K43 according to the event that is dispatched to it.
class K43Bloc extends Bloc<K43Event, K43State> {
  K43Bloc(K43State initialState) : super(initialState) {
    on<K43InitialEvent>(_onInitialize);
  }

  List<ButtonsmallItemModel> fillButtonsmallItemList() {
    return List.generate(1, (index) => ButtonsmallItemModel());
  }

  _onInitialize(
    K43InitialEvent event,
    Emitter<K43State> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        k43ModelObj: state.k43ModelObj?.copyWith(
      buttonsmallItemList: fillButtonsmallItemList(),
    )));
  }
}
