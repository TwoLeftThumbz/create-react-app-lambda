// ignore_for_file: must_be_immutable

part of 'k36_bloc.dart';

/// Represents the state of K36 in the application.
class K36State extends Equatable {
  K36State({this.k36ModelObj});

  K36Model? k36ModelObj;

  @override
  List<Object?> get props => [
        k36ModelObj,
      ];
  K36State copyWith({K36Model? k36ModelObj}) {
    return K36State(
      k36ModelObj: k36ModelObj ?? this.k36ModelObj,
    );
  }
}
