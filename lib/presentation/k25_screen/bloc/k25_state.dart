// ignore_for_file: must_be_immutable

part of 'k25_bloc.dart';

/// Represents the state of K25 in the application.
class K25State extends Equatable {
  K25State({this.k25ModelObj});

  K25Model? k25ModelObj;

  @override
  List<Object?> get props => [
        k25ModelObj,
      ];
  K25State copyWith({K25Model? k25ModelObj}) {
    return K25State(
      k25ModelObj: k25ModelObj ?? this.k25ModelObj,
    );
  }
}
