// ignore_for_file: must_be_immutable

part of 'k58_bloc.dart';

/// Represents the state of K58 in the application.
class K58State extends Equatable {
  K58State({
    this.searchController,
    this.cellGeneralController,
    this.k58ModelObj,
  });

  TextEditingController? searchController;

  TextEditingController? cellGeneralController;

  K58Model? k58ModelObj;

  @override
  List<Object?> get props => [
        searchController,
        cellGeneralController,
        k58ModelObj,
      ];
  K58State copyWith({
    TextEditingController? searchController,
    TextEditingController? cellGeneralController,
    K58Model? k58ModelObj,
  }) {
    return K58State(
      searchController: searchController ?? this.searchController,
      cellGeneralController:
          cellGeneralController ?? this.cellGeneralController,
      k58ModelObj: k58ModelObj ?? this.k58ModelObj,
    );
  }
}
