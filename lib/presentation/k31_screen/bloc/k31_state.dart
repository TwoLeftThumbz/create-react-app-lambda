// ignore_for_file: must_be_immutable

part of 'k31_bloc.dart';

/// Represents the state of K31 in the application.
class K31State extends Equatable {
  K31State({
    this.searchController,
    this.k31ModelObj,
  });

  TextEditingController? searchController;

  K31Model? k31ModelObj;

  @override
  List<Object?> get props => [
        searchController,
        k31ModelObj,
      ];
  K31State copyWith({
    TextEditingController? searchController,
    K31Model? k31ModelObj,
  }) {
    return K31State(
      searchController: searchController ?? this.searchController,
      k31ModelObj: k31ModelObj ?? this.k31ModelObj,
    );
  }
}
