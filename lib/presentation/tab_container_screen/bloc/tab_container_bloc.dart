import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:bcc33_s_application1/presentation/tab_container_screen/models/tab_container_model.dart';
part 'tab_container_event.dart';
part 'tab_container_state.dart';

/// A bloc that manages the state of a TabContainer according to the event that is dispatched to it.
class TabContainerBloc extends Bloc<TabContainerEvent, TabContainerState> {
  TabContainerBloc(TabContainerState initialState) : super(initialState) {
    on<TabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TabContainerInitialEvent event,
    Emitter<TabContainerState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
  }
}
