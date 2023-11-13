import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/my_item_model.dart';import 'package:bcc33_s_application1/presentation/k53_screen/models/k53_model.dart';part 'k53_event.dart';part 'k53_state.dart';/// A bloc that manages the state of a K53 according to the event that is dispatched to it.
class K53Bloc extends Bloc<K53Event, K53State> {K53Bloc(K53State initialState) : super(initialState) { on<K53InitialEvent>(_onInitialize); }

List<MyItemModel> fillMyItemList() { return [MyItemModel(newTeammember: ImageConstant.imgIcons21, louisVuitton: "New Team member")]; } 
_onInitialize(K53InitialEvent event, Emitter<K53State> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); emit(state.copyWith(k53ModelObj: state.k53ModelObj?.copyWith(myItemList: fillMyItemList()))); } 
 }
