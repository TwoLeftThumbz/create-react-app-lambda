import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = true,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? width;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final bool? obscureText;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: textFormFieldWidget,
          )
        : textFormFieldWidget;
  }

  Widget get textFormFieldWidget => SizedBox(
        width: width ?? double.maxFinite,
        child: TextFormField(
          controller: controller,
          focusNode: focusNode ?? FocusNode(),
          autofocus: autofocus!,
          style: textStyle ?? CustomTextStyles.labelLargeInterPrimary,
          obscureText: obscureText!,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          decoration: decoration,
          validator: validator,
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? theme.textTheme.titleSmall,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding: contentPadding ?? EdgeInsets.all(16.h),
        fillColor: fillColor ?? theme.colorScheme.onPrimary.withOpacity(1),
        filled: filled,
        border: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.h),
              borderSide: BorderSide(
                color: theme.colorScheme.onPrimaryContainer,
                width: 1,
              ),
            ),
        enabledBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.h),
              borderSide: BorderSide(
                color: theme.colorScheme.onPrimaryContainer,
                width: 1,
              ),
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.h),
              borderSide: BorderSide(
                color: theme.colorScheme.primary,
                width: 2,
              ),
            ),
      );
}

/// Extension on [CustomTextFormField] to facilitate inclusion of all types of border style etc
extension TextFormFieldStyleHelper on CustomTextFormField {
  static OutlineInputBorder get outlineOnPrimaryContainer => OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.h),
        borderSide: BorderSide(
          color: theme.colorScheme.onPrimaryContainer,
          width: 1,
        ),
      );
  static OutlineInputBorder get outlineGray => OutlineInputBorder(
        borderSide: BorderSide(
          color: appTheme.gray90004,
          width: 1,
        ),
      );
  static OutlineInputBorder get outlineOnPrimary => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.h),
        borderSide: BorderSide(
          color: theme.colorScheme.onPrimary,
          width: 1,
        ),
      );
  static OutlineInputBorder get outlineGray1 => OutlineInputBorder(
        borderSide: BorderSide(
          color: appTheme.gray300,
          width: 1,
        ),
      );
  static OutlineInputBorder get fillBlack => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.h),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get fillPrimary => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.h),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get fillOnPrimaryContainer => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.h),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get outlineGray2 => OutlineInputBorder(
        borderSide: BorderSide(
          color: appTheme.gray90001,
          width: 1,
        ),
      );
  static OutlineInputBorder get outlineBlueGray => OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.h),
        borderSide: BorderSide(
          color: appTheme.blueGray900,
          width: 1,
        ),
      );
  static OutlineInputBorder get fillOnPrimaryTL24 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(24.h),
        borderSide: BorderSide.none,
      );
  static OutlineInputBorder get outlineOnPrimaryTL12 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.h),
        borderSide: BorderSide(
          color: theme.colorScheme.onPrimary,
          width: 1,
        ),
      );
  static OutlineInputBorder get outlineOnPrimaryTL121 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.h),
        borderSide: BorderSide(
          color: theme.colorScheme.onPrimary.withOpacity(1),
          width: 1,
        ),
      );
  static OutlineInputBorder get outlineOnPrimaryTL122 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.h),
        borderSide: BorderSide(
          color: theme.colorScheme.onPrimary,
          width: 2,
        ),
      );
  static OutlineInputBorder get outlineGrayTL16 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(16.h),
        borderSide: BorderSide(
          color: appTheme.gray90003,
          width: 1,
        ),
      );
  static OutlineInputBorder get outlineOnPrimaryContainer1 =>
      OutlineInputBorder(
        borderSide: BorderSide(
          color: theme.colorScheme.onPrimaryContainer,
          width: 1,
        ),
      );
  static OutlineInputBorder get outlineGrayTL12 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.h),
        borderSide: BorderSide(
          color: appTheme.gray300,
          width: 2,
        ),
      );
}
