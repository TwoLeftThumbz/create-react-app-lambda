// ignore_for_file: must_be_immutable

part of 'four_bloc.dart';

/// Represents the state of Four in the application.
class FourState extends Equatable {
  FourState({
    this.emailController,
    this.passwordController,
    this.square = false,
    this.fourModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  FourModel? fourModelObj;

  bool square;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        square,
        fourModelObj,
      ];
  FourState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? square,
    FourModel? fourModelObj,
  }) {
    return FourState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      square: square ?? this.square,
      fourModelObj: fourModelObj ?? this.fourModelObj,
    );
  }
}
