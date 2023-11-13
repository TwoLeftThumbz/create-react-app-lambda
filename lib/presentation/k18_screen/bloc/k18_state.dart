// ignore_for_file: must_be_immutable

part of 'k18_bloc.dart';

/// Represents the state of K18 in the application.
class K18State extends Equatable {
  K18State({this.k18ModelObj});

  K18Model? k18ModelObj;

  @override
  List<Object?> get props => [
        k18ModelObj,
      ];
  K18State copyWith({K18Model? k18ModelObj}) {
    return K18State(
      k18ModelObj: k18ModelObj ?? this.k18ModelObj,
    );
  }
}
