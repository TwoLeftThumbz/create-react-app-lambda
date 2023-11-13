// ignore_for_file: must_be_immutable

part of 'k22_bloc.dart';

/// Represents the state of K22 in the application.
class K22State extends Equatable {
  K22State({
    this.cellInfoController,
    this.buttonController,
    this.progressController,
    this.k22ModelObj,
  });

  TextEditingController? cellInfoController;

  TextEditingController? buttonController;

  TextEditingController? progressController;

  K22Model? k22ModelObj;

  @override
  List<Object?> get props => [
        cellInfoController,
        buttonController,
        progressController,
        k22ModelObj,
      ];
  K22State copyWith({
    TextEditingController? cellInfoController,
    TextEditingController? buttonController,
    TextEditingController? progressController,
    K22Model? k22ModelObj,
  }) {
    return K22State(
      cellInfoController: cellInfoController ?? this.cellInfoController,
      buttonController: buttonController ?? this.buttonController,
      progressController: progressController ?? this.progressController,
      k22ModelObj: k22ModelObj ?? this.k22ModelObj,
    );
  }
}
