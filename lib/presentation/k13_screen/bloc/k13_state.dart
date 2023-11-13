// ignore_for_file: must_be_immutable

part of 'k13_bloc.dart';

/// Represents the state of K13 in the application.
class K13State extends Equatable {
  K13State({this.k13ModelObj});

  K13Model? k13ModelObj;

  @override
  List<Object?> get props => [
        k13ModelObj,
      ];
  K13State copyWith({K13Model? k13ModelObj}) {
    return K13State(
      k13ModelObj: k13ModelObj ?? this.k13ModelObj,
    );
  }
}
