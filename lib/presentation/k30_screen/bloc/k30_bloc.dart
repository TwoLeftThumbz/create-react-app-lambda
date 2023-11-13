import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:bcc33_s_application1/presentation/k30_screen/models/k30_model.dart';part 'k30_event.dart';part 'k30_state.dart';/// A bloc that manages the state of a K30 according to the event that is dispatched to it.
class K30Bloc extends Bloc<K30Event, K30State> {K30Bloc(K30State initialState) : super(initialState) { on<K30InitialEvent>(_onInitialize); on<ChangeCheckBoxEvent>(_changeCheckBox); on<ChangeDropDownEvent>(_changeDropDown); }

_changeCheckBox(ChangeCheckBoxEvent event, Emitter<K30State> emit, ) { emit(state.copyWith(england: event.value)); } 
_changeDropDown(ChangeDropDownEvent event, Emitter<K30State> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(K30InitialEvent event, Emitter<K30State> emit, ) async  { emit(state.copyWith(kingTChallaController: TextEditingController(), kingTChallaController1: TextEditingController(), kingTChallaController2: TextEditingController(), kingTChallaController3: TextEditingController(), kingTChallaController4: TextEditingController(), zipcodeController: TextEditingController(), england: false)); emit(state.copyWith(k30ModelObj: state.k30ModelObj?.copyWith(dropdownItemList: fillDropdownItemList()))); } 
 }
