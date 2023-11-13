// ignore_for_file: must_be_immutable

part of 'k19_bloc.dart';

/// Represents the state of K19 in the application.
class K19State extends Equatable {
  K19State({
    this.passwordController,
    this.isShowPassword = true,
    this.k19ModelObj,
  });

  TextEditingController? passwordController;

  K19Model? k19ModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        passwordController,
        isShowPassword,
        k19ModelObj,
      ];
  K19State copyWith({
    TextEditingController? passwordController,
    bool? isShowPassword,
    K19Model? k19ModelObj,
  }) {
    return K19State(
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      k19ModelObj: k19ModelObj ?? this.k19ModelObj,
    );
  }
}
