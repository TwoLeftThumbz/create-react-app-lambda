// ignore_for_file: must_be_immutable

part of 'k37_bloc.dart';

/// Represents the state of K37 in the application.
class K37State extends Equatable {
  K37State({
    this.cellInfoController,
    this.k37ModelObj,
  });

  TextEditingController? cellInfoController;

  K37Model? k37ModelObj;

  @override
  List<Object?> get props => [
        cellInfoController,
        k37ModelObj,
      ];
  K37State copyWith({
    TextEditingController? cellInfoController,
    K37Model? k37ModelObj,
  }) {
    return K37State(
      cellInfoController: cellInfoController ?? this.cellInfoController,
      k37ModelObj: k37ModelObj ?? this.k37ModelObj,
    );
  }
}
