import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/icons_item_model.dart';
import '../models/bigctas_item_model.dart';
import 'package:bcc33_s_application1/presentation/k25_screen/models/k25_model.dart';
part 'k25_event.dart';
part 'k25_state.dart';

/// A bloc that manages the state of a K25 according to the event that is dispatched to it.
class K25Bloc extends Bloc<K25Event, K25State> {
  K25Bloc(K25State initialState) : super(initialState) {
    on<K25InitialEvent>(_onInitialize);
  }

  _onInitialize(
    K25InitialEvent event,
    Emitter<K25State> emit,
  ) async {
    emit(state.copyWith(
        k25ModelObj: state.k25ModelObj?.copyWith(
      iconsItemList: fillIconsItemList(),
      bigctasItemList: fillBigctasItemList(),
    )));
  }

  List<IconsItemModel> fillIconsItemList() {
    return [
      IconsItemModel(
          icons: ImageConstant.imgIconsPrimary,
          price: "USD",
          price1: " 150,475"),
      IconsItemModel(
          icons: ImageConstant.imgIconsBlack900,
          price: "gbp",
          price1: "£ 17,883")
    ];
  }

  List<BigctasItemModel> fillBigctasItemList() {
    return [
      BigctasItemModel(
          newbeneficiary: ImageConstant.imgIconsOnprimarycontainer,
          harryPotter: "New beneficiary"),
      BigctasItemModel(
          newbeneficiary: ImageConstant.imgIcons15,
          harryPotter: "New conversion")
    ];
  }
}
