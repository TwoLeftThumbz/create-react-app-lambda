// ignore_for_file: must_be_immutable

part of 'k16_bloc.dart';

/// Represents the state of K16 in the application.
class K16State extends Equatable {
  K16State({this.k16ModelObj});

  K16Model? k16ModelObj;

  @override
  List<Object?> get props => [
        k16ModelObj,
      ];
  K16State copyWith({K16Model? k16ModelObj}) {
    return K16State(
      k16ModelObj: k16ModelObj ?? this.k16ModelObj,
    );
  }
}
