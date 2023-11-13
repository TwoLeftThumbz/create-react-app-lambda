// ignore_for_file: must_be_immutable

part of 'k46_bloc.dart';

/// Represents the state of K46 in the application.
class K46State extends Equatable {
  K46State({this.k46ModelObj});

  K46Model? k46ModelObj;

  @override
  List<Object?> get props => [
        k46ModelObj,
      ];
  K46State copyWith({K46Model? k46ModelObj}) {
    return K46State(
      k46ModelObj: k46ModelObj ?? this.k46ModelObj,
    );
  }
}
