// ignore_for_file: must_be_immutable

part of 'tab_container1_bloc.dart';

/// Represents the state of TabContainer1 in the application.
class TabContainer1State extends Equatable {
  TabContainer1State({
    this.searchController,
    this.tabContainer1ModelObj,
  });

  TextEditingController? searchController;

  TabContainer1Model? tabContainer1ModelObj;

  @override
  List<Object?> get props => [
        searchController,
        tabContainer1ModelObj,
      ];
  TabContainer1State copyWith({
    TextEditingController? searchController,
    TabContainer1Model? tabContainer1ModelObj,
  }) {
    return TabContainer1State(
      searchController: searchController ?? this.searchController,
      tabContainer1ModelObj:
          tabContainer1ModelObj ?? this.tabContainer1ModelObj,
    );
  }
}
