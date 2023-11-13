// ignore_for_file: must_be_immutable

part of 'k61_bloc.dart';

/// Represents the state of K61 in the application.
class K61State extends Equatable {
  K61State({
    this.emailController,
    this.k61ModelObj,
  });

  TextEditingController? emailController;

  K61Model? k61ModelObj;

  @override
  List<Object?> get props => [
        emailController,
        k61ModelObj,
      ];
  K61State copyWith({
    TextEditingController? emailController,
    K61Model? k61ModelObj,
  }) {
    return K61State(
      emailController: emailController ?? this.emailController,
      k61ModelObj: k61ModelObj ?? this.k61ModelObj,
    );
  }
}
