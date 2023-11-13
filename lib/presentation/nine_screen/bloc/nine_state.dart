// ignore_for_file: must_be_immutable

part of 'nine_bloc.dart';

/// Represents the state of Nine in the application.
class NineState extends Equatable {
  NineState({
    this.searchController,
    this.nineModelObj,
  });

  TextEditingController? searchController;

  NineModel? nineModelObj;

  @override
  List<Object?> get props => [
        searchController,
        nineModelObj,
      ];
  NineState copyWith({
    TextEditingController? searchController,
    NineModel? nineModelObj,
  }) {
    return NineState(
      searchController: searchController ?? this.searchController,
      nineModelObj: nineModelObj ?? this.nineModelObj,
    );
  }
}
