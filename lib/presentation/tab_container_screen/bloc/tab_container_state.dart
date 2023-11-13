// ignore_for_file: must_be_immutable

part of 'tab_container_bloc.dart';

/// Represents the state of TabContainer in the application.
class TabContainerState extends Equatable {
  TabContainerState({
    this.searchController,
    this.tabContainerModelObj,
  });

  TextEditingController? searchController;

  TabContainerModel? tabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        tabContainerModelObj,
      ];
  TabContainerState copyWith({
    TextEditingController? searchController,
    TabContainerModel? tabContainerModelObj,
  }) {
    return TabContainerState(
      searchController: searchController ?? this.searchController,
      tabContainerModelObj: tabContainerModelObj ?? this.tabContainerModelObj,
    );
  }
}
