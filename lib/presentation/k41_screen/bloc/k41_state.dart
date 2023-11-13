// ignore_for_file: must_be_immutable

part of 'k41_bloc.dart';

/// Represents the state of K41 in the application.
class K41State extends Equatable {
  K41State({
    this.cellInfoController,
    this.k41ModelObj,
  });

  TextEditingController? cellInfoController;

  K41Model? k41ModelObj;

  @override
  List<Object?> get props => [
        cellInfoController,
        k41ModelObj,
      ];
  K41State copyWith({
    TextEditingController? cellInfoController,
    K41Model? k41ModelObj,
  }) {
    return K41State(
      cellInfoController: cellInfoController ?? this.cellInfoController,
      k41ModelObj: k41ModelObj ?? this.k41ModelObj,
    );
  }
}
