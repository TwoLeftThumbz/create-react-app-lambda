// ignore_for_file: must_be_immutable

part of 'k39_bloc.dart';

/// Represents the state of K39 in the application.
class K39State extends Equatable {
  K39State({
    this.cellInfoController,
    this.k39ModelObj,
  });

  TextEditingController? cellInfoController;

  K39Model? k39ModelObj;

  @override
  List<Object?> get props => [
        cellInfoController,
        k39ModelObj,
      ];
  K39State copyWith({
    TextEditingController? cellInfoController,
    K39Model? k39ModelObj,
  }) {
    return K39State(
      cellInfoController: cellInfoController ?? this.cellInfoController,
      k39ModelObj: k39ModelObj ?? this.k39ModelObj,
    );
  }
}
