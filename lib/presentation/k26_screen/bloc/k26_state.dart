// ignore_for_file: must_be_immutable

part of 'k26_bloc.dart';

/// Represents the state of K26 in the application.
class K26State extends Equatable {
  K26State({this.k26ModelObj});

  K26Model? k26ModelObj;

  @override
  List<Object?> get props => [
        k26ModelObj,
      ];
  K26State copyWith({K26Model? k26ModelObj}) {
    return K26State(
      k26ModelObj: k26ModelObj ?? this.k26ModelObj,
    );
  }
}
