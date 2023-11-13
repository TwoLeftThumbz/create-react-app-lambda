import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/subtitle6_item_model.dart';
import 'package:bcc33_s_application1/presentation/k52_screen/models/k52_model.dart';
part 'k52_event.dart';
part 'k52_state.dart';

/// A bloc that manages the state of a K52 according to the event that is dispatched to it.
class K52Bloc extends Bloc<K52Event, K52State> {
  K52Bloc(K52State initialState) : super(initialState) {
    on<K52InitialEvent>(_onInitialize);
  }

  List<Subtitle6ItemModel> fillSubtitle6ItemList() {
    return [
      Subtitle6ItemModel(
          subtitle: "Full account holder name",
          harryPotter: "Bruce Wayne",
          copied: "copied"),
      Subtitle6ItemModel(
          subtitle: "Nickname", harryPotter: "Batman", copied: "copied"),
      Subtitle6ItemModel(
          subtitle: "Beneficiary type",
          harryPotter: "Private",
          copied: "copied")
    ];
  }

  _onInitialize(
    K52InitialEvent event,
    Emitter<K52State> emit,
  ) async {
    emit(state.copyWith(
      cellInfoController: TextEditingController(),
      emailController: TextEditingController(),
    ));
    emit(state.copyWith(
        k52ModelObj: state.k52ModelObj?.copyWith(
      subtitle6ItemList: fillSubtitle6ItemList(),
    )));
  }
}
