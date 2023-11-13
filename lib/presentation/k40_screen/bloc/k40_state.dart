// ignore_for_file: must_be_immutable

part of 'k40_bloc.dart';

/// Represents the state of K40 in the application.
class K40State extends Equatable {
  K40State({
    this.cellInfoController,
    this.k40ModelObj,
  });

  TextEditingController? cellInfoController;

  K40Model? k40ModelObj;

  @override
  List<Object?> get props => [
        cellInfoController,
        k40ModelObj,
      ];
  K40State copyWith({
    TextEditingController? cellInfoController,
    K40Model? k40ModelObj,
  }) {
    return K40State(
      cellInfoController: cellInfoController ?? this.cellInfoController,
      k40ModelObj: k40ModelObj ?? this.k40ModelObj,
    );
  }
}
