// ignore_for_file: must_be_immutable

part of 'k17_bloc.dart';

/// Represents the state of K17 in the application.
class K17State extends Equatable {
  K17State({this.k17ModelObj});

  K17Model? k17ModelObj;

  @override
  List<Object?> get props => [
        k17ModelObj,
      ];
  K17State copyWith({K17Model? k17ModelObj}) {
    return K17State(
      k17ModelObj: k17ModelObj ?? this.k17ModelObj,
    );
  }
}
