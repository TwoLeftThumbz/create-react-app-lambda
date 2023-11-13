// ignore_for_file: must_be_immutable

part of 'k51_bloc.dart';

/// Represents the state of K51 in the application.
class K51State extends Equatable {
  K51State({
    this.searchController,
    this.cellGeneralController,
    this.kingTChallaController,
    this.kingTChallaController1,
    this.kingTChallaController2,
    this.kingTChallaController3,
    this.kingTChallaController4,
    this.zipcodeController,
    this.selectedDropDownValue,
    this.k51ModelObj,
  });

  TextEditingController? searchController;

  TextEditingController? cellGeneralController;

  TextEditingController? kingTChallaController;

  TextEditingController? kingTChallaController1;

  TextEditingController? kingTChallaController2;

  TextEditingController? kingTChallaController3;

  TextEditingController? kingTChallaController4;

  TextEditingController? zipcodeController;

  SelectionPopupModel? selectedDropDownValue;

  K51Model? k51ModelObj;

  @override
  List<Object?> get props => [
        searchController,
        cellGeneralController,
        kingTChallaController,
        kingTChallaController1,
        kingTChallaController2,
        kingTChallaController3,
        kingTChallaController4,
        zipcodeController,
        selectedDropDownValue,
        k51ModelObj,
      ];
  K51State copyWith({
    TextEditingController? searchController,
    TextEditingController? cellGeneralController,
    TextEditingController? kingTChallaController,
    TextEditingController? kingTChallaController1,
    TextEditingController? kingTChallaController2,
    TextEditingController? kingTChallaController3,
    TextEditingController? kingTChallaController4,
    TextEditingController? zipcodeController,
    SelectionPopupModel? selectedDropDownValue,
    K51Model? k51ModelObj,
  }) {
    return K51State(
      searchController: searchController ?? this.searchController,
      cellGeneralController:
          cellGeneralController ?? this.cellGeneralController,
      kingTChallaController:
          kingTChallaController ?? this.kingTChallaController,
      kingTChallaController1:
          kingTChallaController1 ?? this.kingTChallaController1,
      kingTChallaController2:
          kingTChallaController2 ?? this.kingTChallaController2,
      kingTChallaController3:
          kingTChallaController3 ?? this.kingTChallaController3,
      kingTChallaController4:
          kingTChallaController4 ?? this.kingTChallaController4,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      k51ModelObj: k51ModelObj ?? this.k51ModelObj,
    );
  }
}
