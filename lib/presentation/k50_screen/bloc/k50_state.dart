// ignore_for_file: must_be_immutable

part of 'k50_bloc.dart';

/// Represents the state of K50 in the application.
class K50State extends Equatable {
  K50State({
    this.searchController,
    this.cellGeneralController,
    this.k50ModelObj,
  });

  TextEditingController? searchController;

  TextEditingController? cellGeneralController;

  K50Model? k50ModelObj;

  @override
  List<Object?> get props => [
        searchController,
        cellGeneralController,
        k50ModelObj,
      ];
  K50State copyWith({
    TextEditingController? searchController,
    TextEditingController? cellGeneralController,
    K50Model? k50ModelObj,
  }) {
    return K50State(
      searchController: searchController ?? this.searchController,
      cellGeneralController:
          cellGeneralController ?? this.cellGeneralController,
      k50ModelObj: k50ModelObj ?? this.k50ModelObj,
    );
  }
}
