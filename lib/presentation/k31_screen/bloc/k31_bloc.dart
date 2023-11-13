import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/bw_item_model.dart';
import 'package:bcc33_s_application1/presentation/k31_screen/models/k31_model.dart';
part 'k31_event.dart';
part 'k31_state.dart';

/// A bloc that manages the state of a K31 according to the event that is dispatched to it.
class K31Bloc extends Bloc<K31Event, K31State> {
  K31Bloc(K31State initialState) : super(initialState) {
    on<K31InitialEvent>(_onInitialize);
  }

  List<BwItemModel> fillBwItemList() {
    return [
      BwItemModel(louisVuitton: "JNKK", purchased: "AE100357418976127576888"),
      BwItemModel(
          louisVuitton: "Wayne Enterprise", purchased: "023293111 - 72077060"),
      BwItemModel(
          louisVuitton: "Hogwarts", purchased: "GB74BARC20038477695484"),
      BwItemModel(
          louisVuitton: "Bruce Wayne", purchased: "742748510 - 45545613"),
      BwItemModel(louisVuitton: "katsumi Sato", purchased: "8976-789"),
      BwItemModel(
          louisVuitton: "Bukola Kallel",
          purchased: "CG5748281381636492458693654"),
      BwItemModel(
          louisVuitton: "Defne Gross",
          purchased: "FR6730003000705761672661G61"),
      BwItemModel(louisVuitton: "Jakub Tanaka", purchased: "NL17RABO5946717057")
    ];
  }

  _onInitialize(
    K31InitialEvent event,
    Emitter<K31State> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        k31ModelObj: state.k31ModelObj?.copyWith(
      bwItemList: fillBwItemList(),
    )));
  }
}
