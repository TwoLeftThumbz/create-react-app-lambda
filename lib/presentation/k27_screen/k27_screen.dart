import 'bloc/k27_bloc.dart';import 'models/k27_model.dart';import 'package:bcc33_s_application1/core/app_export.dart';import 'package:bcc33_s_application1/widgets/app_bar/appbar_leading_image.dart';import 'package:bcc33_s_application1/widgets/app_bar/appbar_title.dart';import 'package:bcc33_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:bcc33_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:bcc33_s_application1/widgets/custom_drop_down.dart';import 'package:bcc33_s_application1/widgets/custom_elevated_button.dart';import 'package:bcc33_s_application1/widgets/custom_search_view.dart';import 'package:bcc33_s_application1/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';class K27Screen extends StatelessWidget {const K27Screen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<K27Bloc>(create: (context) => K27Bloc(K27State(k27ModelObj: K27Model()))..add(K27InitialEvent()), child: K27Screen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(children: [SizedBox(height: 4.v), Container(padding: EdgeInsets.all(23.h), decoration: AppDecoration.outlineOnPrimary1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder32), child: Column(mainAxisSize: MainAxisSize.min, children: [Container(decoration: AppDecoration.outlineGray300, child: Column(children: [Container(decoration: AppDecoration.outlineBlueGray, child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgIcons17, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(bottom: 16.v)), Padding(padding: EdgeInsets.only(left: 8.h, bottom: 15.v), child: Text("lbl_new_transfer".tr, style: theme.textTheme.titleSmall))])), SizedBox(height: 35.v), Align(alignment: Alignment.centerLeft, child: Row(children: [Padding(padding: EdgeInsets.only(top: 35.v, bottom: 15.v), child: Text("lbl4".tr, style: theme.textTheme.headlineSmall)), Text("lbl_1_285".tr, style: theme.textTheme.displayLarge)])), SizedBox(height: 28.v), Container(padding: EdgeInsets.all(8.h), decoration: AppDecoration.outlinePrimary4.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 8.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 17.v), child: Text("msg_from_your_balance".tr, style: theme.textTheme.titleSmall)), Opacity(opacity: 0.65, child: CustomImageView(imagePath: ImageConstant.imgIcons18, height: 32.adaptSize, width: 32.adaptSize, margin: EdgeInsets.only(bottom: 2.v)))])), SizedBox(height: 8.v), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_5_320_5".tr, style: theme.textTheme.headlineSmall)), SizedBox(height: 14.v)])), SizedBox(height: 8.v), BlocSelector<K27Bloc, K27State, K27Model?>(selector: (state) => state.k27ModelObj, builder: (context, k27ModelObj) {return CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 12.v), decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.h)), child: CustomImageView(imagePath: ImageConstant.imgArrowdown, height: 24.adaptSize, width: 24.adaptSize)), hintText: "lbl_euro".tr, items: k27ModelObj?.dropdownItemList ?? [], prefix: Container(margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v), decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.h)), child: CustomImageView(imagePath: ImageConstant.imgFlags, height: 24.adaptSize, width: 24.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 49.v), onChanged: (value) {context.read<K27Bloc>().add(ChangeDropDownEvent(value: value));});}), SizedBox(height: 24.v)])), SizedBox(height: 24.v), Container(decoration: AppDecoration.outlineGray3002, child: Column(children: [Align(alignment: Alignment.centerLeft, child: Row(children: [CustomImageView(imagePath: ImageConstant.imgIcons19, height: 16.adaptSize, width: 16.adaptSize), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_send_to".tr, style: theme.textTheme.titleSmall))])), SizedBox(height: 15.v), BlocSelector<K27Bloc, K27State, TextEditingController?>(selector: (state) => state.searchController, builder: (context, searchController) {return CustomSearchView(controller: searchController, hintText: "msg_search_beneficiary".tr, borderDecoration: SearchViewStyleHelper.fillBlack, fillColor: appTheme.black900.withOpacity(0.2));}), SizedBox(height: 24.v), BlocSelector<K27Bloc, K27State, TextEditingController?>(selector: (state) => state.cellInfoController, builder: (context, cellInfoController) {return CustomTextFormField(controller: cellInfoController, hintText: "lbl_new_beneficiary".tr, textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.fromLTRB(15.h, 18.v, 30.h, 18.v), child: CustomImageView(imagePath: ImageConstant.imgIcons20, height: 27.v, width: 33.h)), prefixConstraints: BoxConstraints(maxHeight: 64.v), suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 20.v, 12.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgIcons21, height: 24.adaptSize, width: 24.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 64.v), contentPadding: EdgeInsets.symmetric(vertical: 23.v), borderDecoration: TextFormFieldStyleHelper.outlineBlueGray, fillColor: appTheme.black900.withOpacity(0.2));}), SizedBox(height: 24.v)])), SizedBox(height: 24.v), CustomElevatedButton(text: "lbl_send".tr.toUpperCase(), onPressed: () {onTapSend(context);})])), SizedBox(height: 15.v), Opacity(opacity: 0.5, child: Container(width: 294.h, margin: EdgeInsets.symmetric(horizontal: 33.h), child: Text("msg_lorem_ipsum_dolor3".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.labelMedium)))])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgIcons1, margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 16.v)), title: AppbarTitle(text: "lbl_transfers".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgAvatarsGray900, margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v))]); } 
/// Navigates to the k36Screen when the action is triggered.
onTapSend(BuildContext context) { NavigatorService.pushNamed(AppRoutes.k36Screen, ); } 
 }