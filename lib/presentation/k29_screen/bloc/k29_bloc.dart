import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:bcc33_s_application1/presentation/k29_screen/models/k29_model.dart';part 'k29_event.dart';part 'k29_state.dart';/// A bloc that manages the state of a K29 according to the event that is dispatched to it.
class K29Bloc extends Bloc<K29Event, K29State> {K29Bloc(K29State initialState) : super(initialState) { on<K29InitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); }

_changeDropDown(ChangeDropDownEvent event, Emitter<K29State> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(K29InitialEvent event, Emitter<K29State> emit, ) async  { emit(state.copyWith(kingTChallaController: TextEditingController(), kingTChallaController1: TextEditingController(), firstNameController: TextEditingController(), lastNameController: TextEditingController(), cityController: TextEditingController(), zipcodeController: TextEditingController())); emit(state.copyWith(k29ModelObj: state.k29ModelObj?.copyWith(dropdownItemList: fillDropdownItemList()))); } 
 }
