// ignore_for_file: must_be_immutable

part of 'k53_bloc.dart';

/// Represents the state of K53 in the application.
class K53State extends Equatable {
  K53State({
    this.searchController,
    this.k53ModelObj,
  });

  TextEditingController? searchController;

  K53Model? k53ModelObj;

  @override
  List<Object?> get props => [
        searchController,
        k53ModelObj,
      ];
  K53State copyWith({
    TextEditingController? searchController,
    K53Model? k53ModelObj,
  }) {
    return K53State(
      searchController: searchController ?? this.searchController,
      k53ModelObj: k53ModelObj ?? this.k53ModelObj,
    );
  }
}
