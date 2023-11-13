// ignore_for_file: must_be_immutable

part of 'k27_bloc.dart';

/// Represents the state of K27 in the application.
class K27State extends Equatable {
  K27State({
    this.searchController,
    this.cellInfoController,
    this.selectedDropDownValue,
    this.k27ModelObj,
  });

  TextEditingController? searchController;

  TextEditingController? cellInfoController;

  SelectionPopupModel? selectedDropDownValue;

  K27Model? k27ModelObj;

  @override
  List<Object?> get props => [
        searchController,
        cellInfoController,
        selectedDropDownValue,
        k27ModelObj,
      ];
  K27State copyWith({
    TextEditingController? searchController,
    TextEditingController? cellInfoController,
    SelectionPopupModel? selectedDropDownValue,
    K27Model? k27ModelObj,
  }) {
    return K27State(
      searchController: searchController ?? this.searchController,
      cellInfoController: cellInfoController ?? this.cellInfoController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      k27ModelObj: k27ModelObj ?? this.k27ModelObj,
    );
  }
}
