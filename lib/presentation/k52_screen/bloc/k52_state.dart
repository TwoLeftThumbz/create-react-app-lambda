// ignore_for_file: must_be_immutable

part of 'k52_bloc.dart';

/// Represents the state of K52 in the application.
class K52State extends Equatable {
  K52State({
    this.cellInfoController,
    this.emailController,
    this.k52ModelObj,
  });

  TextEditingController? cellInfoController;

  TextEditingController? emailController;

  K52Model? k52ModelObj;

  @override
  List<Object?> get props => [
        cellInfoController,
        emailController,
        k52ModelObj,
      ];
  K52State copyWith({
    TextEditingController? cellInfoController,
    TextEditingController? emailController,
    K52Model? k52ModelObj,
  }) {
    return K52State(
      cellInfoController: cellInfoController ?? this.cellInfoController,
      emailController: emailController ?? this.emailController,
      k52ModelObj: k52ModelObj ?? this.k52ModelObj,
    );
  }
}
