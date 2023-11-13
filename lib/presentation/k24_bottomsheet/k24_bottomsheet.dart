import 'bloc/k24_bloc.dart';
import 'models/k24_model.dart';
import 'package:bcc33_s_application1/core/app_export.dart';
import 'package:bcc33_s_application1/widgets/custom_switch.dart';
import 'package:bcc33_s_application1/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class K24Bottomsheet extends StatelessWidget {
  const K24Bottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<K24Bloc>(
      create: (context) => K24Bloc(K24State(
        k24ModelObj: K24Model(),
      ))
        ..add(K24InitialEvent()),
      child: K24Bottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: 373.h,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 32.v,
      ),
      decoration: AppDecoration.fillGray,
      child: Column(
        children: [
          SizedBox(height: 12.v),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.roundedBorder40,
            ),
            child: Column(
              children: [
                BlocSelector<K24Bloc, K24State, TextEditingController?>(
                  selector: (state) => state.cellInfoController,
                  builder: (context, cellInfoController) {
                    return CustomTextFormField(
                      controller: cellInfoController,
                      hintText: "lbl_payment_methods".tr,
                      textInputAction: TextInputAction.done,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 30.h,
                        vertical: 11.v,
                      ),
                      borderDecoration: TextFormFieldStyleHelper.outlineGray2,
                      filled: false,
                    );
                  },
                ),
                _buildContent(context),
                _buildContent1(context),
                _buildContent2(context),
                _buildContent3(context),
                _buildContent4(context),
                _buildContent5(context),
                SizedBox(height: 23.v),
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    width: 294.h,
                    margin: EdgeInsets.symmetric(horizontal: 9.h),
                    child: Text(
                      "msg_lorem_ipsum_dolor3".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.labelMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContent(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 24.v,
        bottom: 23.v,
      ),
      decoration: AppDecoration.outlineGray300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 1.v,
            ),
            child: Text(
              "lbl_chip_payments".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          BlocSelector<K24Bloc, K24State, bool?>(
            selector: (state) => state.isSelectedSwitch,
            builder: (context, isSelectedSwitch) {
              return CustomSwitch(
                value: isSelectedSwitch,
                onChange: (value) {
                  context.read<K24Bloc>().add(ChangeSwitchEvent(value: value));
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContent1(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 24.v,
        bottom: 23.v,
      ),
      decoration: AppDecoration.outlineGray300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3.v),
            child: Text(
              "lbl_atm_withdrawals".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          BlocSelector<K24Bloc, K24State, bool?>(
            selector: (state) => state.isSelectedSwitch1,
            builder: (context, isSelectedSwitch1) {
              return CustomSwitch(
                value: isSelectedSwitch1,
                onChange: (value) {
                  context.read<K24Bloc>().add(ChangeSwitch1Event(value: value));
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContent2(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 24.v,
        bottom: 23.v,
      ),
      decoration: AppDecoration.outlineGray300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 1.v,
            ),
            child: Text(
              "lbl_online_payments".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          BlocSelector<K24Bloc, K24State, bool?>(
            selector: (state) => state.isSelectedSwitch2,
            builder: (context, isSelectedSwitch2) {
              return CustomSwitch(
                value: isSelectedSwitch2,
                onChange: (value) {
                  context.read<K24Bloc>().add(ChangeSwitch2Event(value: value));
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContent3(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 24.v,
        bottom: 23.v,
      ),
      decoration: AppDecoration.outlineGray300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3.v),
            child: Text(
              "lbl_mobile_wallets".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          BlocSelector<K24Bloc, K24State, bool?>(
            selector: (state) => state.isSelectedSwitch3,
            builder: (context, isSelectedSwitch3) {
              return CustomSwitch(
                value: isSelectedSwitch3,
                onChange: (value) {
                  context.read<K24Bloc>().add(ChangeSwitch3Event(value: value));
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContent4(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 24.v,
        bottom: 23.v,
      ),
      decoration: AppDecoration.outlineGray300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3.v),
            child: Text(
              "lbl_contactless".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          BlocSelector<K24Bloc, K24State, bool?>(
            selector: (state) => state.isSelectedSwitch4,
            builder: (context, isSelectedSwitch4) {
              return CustomSwitch(
                value: isSelectedSwitch4,
                onChange: (value) {
                  context.read<K24Bloc>().add(ChangeSwitch4Event(value: value));
                },
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContent5(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 24.v,
        bottom: 23.v,
      ),
      decoration: AppDecoration.outlineGray300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 1.v,
            ),
            child: Text(
              "lbl_magnetic_stripe".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          BlocSelector<K24Bloc, K24State, bool?>(
            selector: (state) => state.isSelectedSwitch5,
            builder: (context, isSelectedSwitch5) {
              return CustomSwitch(
                value: isSelectedSwitch5,
                onChange: (value) {
                  context.read<K24Bloc>().add(ChangeSwitch5Event(value: value));
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
