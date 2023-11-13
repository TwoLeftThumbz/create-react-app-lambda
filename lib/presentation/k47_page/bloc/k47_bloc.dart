import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/bigctas2_item_model.dart';
import '../models/icons2_item_model.dart';
import 'package:bcc33_s_application1/presentation/k47_page/models/k47_model.dart';
part 'k47_event.dart';
part 'k47_state.dart';

/// A bloc that manages the state of a K47 according to the event that is dispatched to it.
class K47Bloc extends Bloc<K47Event, K47State> {
  K47Bloc(K47State initialState) : super(initialState) {
    on<K47InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K47InitialEvent event,
    Emitter<K47State> emit,
  ) async {
    emit(state.copyWith(
        k47ModelObj: state.k47ModelObj?.copyWith(
      bigctas2ItemList: fillBigctas2ItemList(),
      icons2ItemList: fillIcons2ItemList(),
    )));
  }

  List<Bigctas2ItemModel> fillBigctas2ItemList() {
    return [
      Bigctas2ItemModel(
          newbalance: ImageConstant.imgIconsOnprimarycontainer24x24,
          harryPotter: "New balance"),
      Bigctas2ItemModel(
          newbalance: ImageConstant.imgIcons37, harryPotter: "New vault")
    ];
  }

  List<Icons2ItemModel> fillIcons2ItemList() {
    return [
      Icons2ItemModel(price: "USD", price1: " 150,475"),
      Icons2ItemModel(price: "Euro", price1: "€ 5,320.5"),
      Icons2ItemModel(price: "GBP", price1: "£ 17,883")
    ];
  }
}
