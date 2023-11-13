// ignore_for_file: must_be_immutable

part of 'k15_bloc.dart';

/// Represents the state of K15 in the application.
class K15State extends Equatable {
  K15State({this.k15ModelObj});

  K15Model? k15ModelObj;

  @override
  List<Object?> get props => [
        k15ModelObj,
      ];
  K15State copyWith({K15Model? k15ModelObj}) {
    return K15State(
      k15ModelObj: k15ModelObj ?? this.k15ModelObj,
    );
  }
}
