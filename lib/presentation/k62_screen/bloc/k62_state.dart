// ignore_for_file: must_be_immutable

part of 'k62_bloc.dart';

/// Represents the state of K62 in the application.
class K62State extends Equatable {
  K62State({
    this.emailController,
    this.k62ModelObj,
  });

  TextEditingController? emailController;

  K62Model? k62ModelObj;

  @override
  List<Object?> get props => [
        emailController,
        k62ModelObj,
      ];
  K62State copyWith({
    TextEditingController? emailController,
    K62Model? k62ModelObj,
  }) {
    return K62State(
      emailController: emailController ?? this.emailController,
      k62ModelObj: k62ModelObj ?? this.k62ModelObj,
    );
  }
}
