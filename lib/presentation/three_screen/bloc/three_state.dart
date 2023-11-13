// ignore_for_file: must_be_immutable

part of 'three_bloc.dart';

/// Represents the state of Three in the application.
class ThreeState extends Equatable {
  ThreeState({
    this.emailController,
    this.passwordController,
    this.threeModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  ThreeModel? threeModelObj;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        threeModelObj,
      ];
  ThreeState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    ThreeModel? threeModelObj,
  }) {
    return ThreeState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      threeModelObj: threeModelObj ?? this.threeModelObj,
    );
  }
}
