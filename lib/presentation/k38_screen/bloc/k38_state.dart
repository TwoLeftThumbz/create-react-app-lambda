// ignore_for_file: must_be_immutable

part of 'k38_bloc.dart';

/// Represents the state of K38 in the application.
class K38State extends Equatable {
  K38State({
    this.cellInfoController,
    this.cellInfoController1,
    this.k38ModelObj,
  });

  TextEditingController? cellInfoController;

  TextEditingController? cellInfoController1;

  K38Model? k38ModelObj;

  @override
  List<Object?> get props => [
        cellInfoController,
        cellInfoController1,
        k38ModelObj,
      ];
  K38State copyWith({
    TextEditingController? cellInfoController,
    TextEditingController? cellInfoController1,
    K38Model? k38ModelObj,
  }) {
    return K38State(
      cellInfoController: cellInfoController ?? this.cellInfoController,
      cellInfoController1: cellInfoController1 ?? this.cellInfoController1,
      k38ModelObj: k38ModelObj ?? this.k38ModelObj,
    );
  }
}
