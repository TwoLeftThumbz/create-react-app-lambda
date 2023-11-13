import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/datamosaic_item_model.dart';
import 'package:bcc33_s_application1/presentation/k45_screen/models/k45_model.dart';
part 'k45_event.dart';
part 'k45_state.dart';

/// A bloc that manages the state of a K45 according to the event that is dispatched to it.
class K45Bloc extends Bloc<K45Event, K45State> {
  K45Bloc(K45State initialState) : super(initialState) {
    on<K45InitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<K45State> emit,
  ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }

  List<DatamosaicItemModel> fillDatamosaicItemList() {
    return [
      DatamosaicItemModel(fiftyFive: "55%", officeExpenses: "Office Expenses"),
      DatamosaicItemModel(fiftyFive: "15%", officeExpenses: "Software"),
      DatamosaicItemModel(fiftyFive: "10%", officeExpenses: "Utility Bills"),
      DatamosaicItemModel(fiftyFive: "20%", officeExpenses: "Food")
    ];
  }

  _onInitialize(
    K45InitialEvent event,
    Emitter<K45State> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
      isSelectedSwitch: false,
    ));
    emit(state.copyWith(
        k45ModelObj: state.k45ModelObj?.copyWith(
      datamosaicItemList: fillDatamosaicItemList(),
    )));
  }
}
