import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/tab_container1_screen/models/tab_container1_model.dart';
part 'tab_container1_event.dart';
part 'tab_container1_state.dart';

/// A bloc that manages the state of a TabContainer1 according to the event that is dispatched to it.
class TabContainer1Bloc extends Bloc<TabContainer1Event, TabContainer1State> {
  TabContainer1Bloc(TabContainer1State initialState) : super(initialState) {
    on<TabContainer1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    TabContainer1InitialEvent event,
    Emitter<TabContainer1State> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
