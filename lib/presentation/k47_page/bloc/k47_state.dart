// ignore_for_file: must_be_immutable

part of 'k47_bloc.dart';

/// Represents the state of K47 in the application.
class K47State extends Equatable {
  K47State({this.k47ModelObj});

  K47Model? k47ModelObj;

  @override
  List<Object?> get props => [
        k47ModelObj,
      ];
  K47State copyWith({K47Model? k47ModelObj}) {
    return K47State(
      k47ModelObj: k47ModelObj ?? this.k47ModelObj,
    );
  }
}
