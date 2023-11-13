import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/subtitle5_item_model.dart';import 'package:bcc33_s_application1/presentation/k42_screen/models/k42_model.dart';part 'k42_event.dart';part 'k42_state.dart';/// A bloc that manages the state of a K42 according to the event that is dispatched to it.
class K42Bloc extends Bloc<K42Event, K42State> {K42Bloc(K42State initialState) : super(initialState) { on<K42InitialEvent>(_onInitialize); }

List<Subtitle5ItemModel> fillSubtitle5ItemList() { return [Subtitle5ItemModel(subtitle: "paid where", harryPotter: "Online", copied: "copied"), Subtitle5ItemModel(subtitle: "you paid", harryPotter: "£ 751", copied: "copied"), Subtitle5ItemModel(subtitle: "transfer fee", harryPotter: "£ 0", copied: "copied")]; } 
_onInitialize(K42InitialEvent event, Emitter<K42State> emit, ) async  { emit(state.copyWith(iconsController: TextEditingController())); emit(state.copyWith(k42ModelObj: state.k42ModelObj?.copyWith(subtitle5ItemList: fillSubtitle5ItemList()))); } 
 }
