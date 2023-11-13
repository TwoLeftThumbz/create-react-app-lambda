import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/subtitle4_item_model.dart';import 'package:bcc33_s_application1/presentation/k41_screen/models/k41_model.dart';part 'k41_event.dart';part 'k41_state.dart';/// A bloc that manages the state of a K41 according to the event that is dispatched to it.
class K41Bloc extends Bloc<K41Event, K41State> {K41Bloc(K41State initialState) : super(initialState) { on<K41InitialEvent>(_onInitialize); }

List<Subtitle4ItemModel> fillSubtitle4ItemList() { return [Subtitle4ItemModel(subtitle: "paid where", harryPotter: "Online", copied: "copied"), Subtitle4ItemModel(subtitle: "declined amount", harryPotter: "£ 751", copied: "copied"), Subtitle4ItemModel(subtitle: "transfer fee", harryPotter: "£ 0", copied: "copied")]; } 
_onInitialize(K41InitialEvent event, Emitter<K41State> emit, ) async  { emit(state.copyWith(cellInfoController: TextEditingController())); emit(state.copyWith(k41ModelObj: state.k41ModelObj?.copyWith(subtitle4ItemList: fillSubtitle4ItemList()))); } 
 }
