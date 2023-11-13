import '../k42_screen/widgets/subtitle5_item_widget.dart';import 'bloc/k42_bloc.dart';import 'models/k42_model.dart';import 'models/subtitle5_item_model.dart';import 'package:bcc33_s_application1/core/app_export.dart';import 'package:bcc33_s_application1/widgets/app_bar/appbar_leading_image.dart';import 'package:bcc33_s_application1/widgets/app_bar/appbar_title.dart';import 'package:bcc33_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:bcc33_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:bcc33_s_application1/widgets/custom_elevated_button.dart';import 'package:bcc33_s_application1/widgets/custom_icon_button.dart';import 'package:bcc33_s_application1/widgets/custom_outlined_button.dart';import 'package:bcc33_s_application1/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';class K42Screen extends StatelessWidget {const K42Screen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<K42Bloc>(create: (context) => K42Bloc(K42State(k42ModelObj: K42Model()))..add(K42InitialEvent()), child: K42Screen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(child: SizedBox(height: 1250.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_you_paid".tr, style: theme.textTheme.titleSmall), Row(children: [Padding(padding: EdgeInsets.only(top: 38.v, bottom: 12.v), child: Text("lbl5".tr, style: theme.textTheme.headlineSmall)), Text("lbl_751".tr, style: theme.textTheme.displayLarge)])])), SizedBox(height: 23.v), Container(padding: EdgeInsets.all(24.h), decoration: AppDecoration.fillOnPrimary1.copyWith(borderRadius: BorderRadiusStyle.circleBorder24), child: Column(mainAxisSize: MainAxisSize.min, children: [Container(decoration: AppDecoration.outlineOnPrimaryContainer1, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 9.v, bottom: 24.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_to".tr, style: theme.textTheme.titleSmall), SizedBox(height: 3.v), Text("lbl_nike_store".tr, style: theme.textTheme.titleSmall)])), Padding(padding: EdgeInsets.only(bottom: 16.v), child: CustomIconButton(height: 56.adaptSize, width: 56.adaptSize, padding: EdgeInsets.all(16.h), decoration: IconButtonStyleHelper.fillOnPrimaryContainer, child: CustomImageView(imagePath: ImageConstant.imgAvatars56x56)))])), SizedBox(height: 24.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Row(children: [Container(width: 89.h, margin: EdgeInsets.only(top: 8.v, bottom: 5.v), decoration: BoxDecoration(borderRadius: BorderRadiusStyle.circleBorder8), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgIcons28, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(bottom: 2.v)), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_shopping".tr, style: theme.textTheme.titleSmall))])), Padding(padding: EdgeInsets.only(left: 24.h), child: CustomIconButton(height: 32.adaptSize, width: 32.adaptSize, padding: EdgeInsets.all(8.h), decoration: IconButtonStyleHelper.outlineOnPrimaryContainer, child: CustomImageView(imagePath: ImageConstant.imgIcons25)))]))), SizedBox(height: 25.v), Opacity(opacity: 0.05, child: Divider()), Container(padding: EdgeInsets.only(top: 14.v, bottom: 13.v), decoration: AppDecoration.outlineOnPrimaryContainer1, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(top: 3.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_paid_on".tr, style: theme.textTheme.titleSmall), SizedBox(height: 4.v), Text("msg_august_11th_2023".tr, style: theme.textTheme.titleSmall)])), Padding(padding: EdgeInsets.only(top: 24.v, right: 4.h), child: Text("lbl_copied".tr, style: theme.textTheme.titleSmall))])), Container(padding: EdgeInsets.only(top: 14.v, bottom: 13.v), decoration: AppDecoration.outlineOnPrimaryContainer1, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 3.v, bottom: 1.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_paid_with".tr, style: theme.textTheme.titleSmall), SizedBox(height: 2.v), Text("lbl_card_5678".tr, style: theme.textTheme.titleSmall)])), Padding(padding: EdgeInsets.only(top: 24.v), child: Text("lbl_copied".tr, style: theme.textTheme.titleSmall))])), Container(padding: EdgeInsets.only(top: 14.v, bottom: 13.v), decoration: AppDecoration.outlineOnPrimaryContainer1, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(top: 3.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_paid_via".tr, style: theme.textTheme.titleSmall), SizedBox(height: 4.v), Text("lbl_apple_pay".tr, style: theme.textTheme.titleSmall)])), CustomImageView(imagePath: ImageConstant.imgPaymentlogo, height: 16.v, width: 39.h, margin: EdgeInsets.only(top: 23.v, right: 4.h))])), _buildSubtitle(context), SizedBox(height: 24.v), Align(alignment: Alignment.centerLeft, child: Text("msg_trasaction_number".tr, style: theme.textTheme.titleSmall)), SizedBox(height: 7.v), BlocSelector<K42Bloc, K42State, TextEditingController?>(selector: (state) => state.iconsController, builder: (context, iconsController) {return CustomTextFormField(controller: iconsController, hintText: "lbl_987654321032".tr, textInputAction: TextInputAction.done, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v), child: CustomImageView(imagePath: ImageConstant.imgIcons26, height: 24.adaptSize, width: 24.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(left: 16.h, top: 19.v, bottom: 19.v));}), SizedBox(height: 8.v), Container(padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 21.v), decoration: AppDecoration.outlineOnPrimaryContainer3.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_add_invoice".tr, style: theme.textTheme.titleSmall), SizedBox(height: 4.v), SizedBox(width: 157.h, child: Text("msg_max_5mb_pdf_png".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleSmall))]), Spacer(), Padding(padding: EdgeInsets.only(top: 21.v, bottom: 17.v), child: Text("lbl_copied".tr, style: theme.textTheme.titleSmall)), Opacity(opacity: 0.5, child: CustomImageView(imagePath: ImageConstant.imgIcons27, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.symmetric(vertical: 16.v)))])), SizedBox(height: 24.v), CustomElevatedButton(text: "lbl_send".tr.toUpperCase(), onPressed: () {onTapSend(context);})]))]))), Opacity(opacity: 0.25, child: Align(alignment: Alignment.topCenter, child: Container(height: 1205.v, width: double.maxFinite, decoration: BoxDecoration(color: appTheme.black90026.withOpacity(0.44))))), _buildOverlayCategories(context)])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 96.v, leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgIcons1, margin: EdgeInsets.only(left: 16.h, top: 4.v, bottom: 4.v)), title: AppbarTitle(text: "msg_transaction_details".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgAvatarsGray900, margin: EdgeInsets.symmetric(horizontal: 16.h))]); } 
/// Section Widget
Widget _buildSubtitle(BuildContext context) { return BlocSelector<K42Bloc, K42State, K42Model?>(selector: (state) => state.k42ModelObj, builder: (context, k42ModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 1.v);}, itemCount: k42ModelObj?.subtitle5ItemList.length ?? 0, itemBuilder: (context, index) {Subtitle5ItemModel model = k42ModelObj?.subtitle5ItemList[index] ?? Subtitle5ItemModel(); return Subtitle5ItemWidget(model);});}); } 
/// Section Widget
Widget _buildOverlayCategories(BuildContext context) { return Align(alignment: Alignment.bottomCenter, child: Container(margin: EdgeInsets.only(left: 8.h, right: 8.h, bottom: 12.v), padding: EdgeInsets.all(32.h), decoration: AppDecoration.fillOnPrimary1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder40), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Align(alignment: Alignment.centerLeft, child: Text("msg_select_a_catagory".tr, style: theme.textTheme.titleSmall)), SizedBox(height: 6.v), Align(alignment: Alignment.centerLeft, child: Container(width: 273.h, margin: EdgeInsets.only(right: 39.h), child: Text("msg_lorem_ipsum_dolor3".tr, maxLines: 3, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleSmall))), SizedBox(height: 23.v), Container(padding: EdgeInsets.only(top: 16.v, bottom: 15.v), decoration: AppDecoration.outlineGray300, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(margin: EdgeInsets.only(left: 16.h, top: 7.v, bottom: 7.v), decoration: BoxDecoration(borderRadius: BorderRadiusStyle.circleBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgIconsWhiteA70016x16, height: 16.adaptSize, width: 16.adaptSize), Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_education".tr, style: theme.textTheme.titleSmall))])), Container(height: 32.adaptSize, width: 32.adaptSize, padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 8.v), decoration: AppDecoration.outlinePrimary6.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: CustomImageView(imagePath: ImageConstant.imgCheckmark, height: 11.v, width: 14.h, alignment: Alignment.bottomCenter))])), Container(padding: EdgeInsets.only(top: 16.v, bottom: 15.v), decoration: AppDecoration.outlineGray300, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(margin: EdgeInsets.only(left: 16.h, top: 8.v, bottom: 5.v), decoration: BoxDecoration(borderRadius: BorderRadiusStyle.circleBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgIcons28, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(bottom: 2.v)), Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_shopping".tr, style: theme.textTheme.titleSmall))])), Container(height: 32.adaptSize, width: 32.adaptSize, decoration: AppDecoration.outlinePrimary7.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: CustomImageView(imagePath: ImageConstant.imgIcons29, height: 32.adaptSize, width: 32.adaptSize, radius: BorderRadius.circular(16.h), alignment: Alignment.center, onTap: () {onTapImgIcons(context);}))])), Container(padding: EdgeInsets.only(top: 16.v, bottom: 15.v), decoration: AppDecoration.outlineGray300, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(margin: EdgeInsets.only(left: 16.h, top: 7.v, bottom: 7.v), decoration: BoxDecoration(borderRadius: BorderRadiusStyle.circleBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgIcons24, height: 16.adaptSize, width: 16.adaptSize), Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_gifts".tr, style: theme.textTheme.titleSmall))])), Container(height: 32.adaptSize, width: 32.adaptSize, decoration: AppDecoration.outlinePrimary7.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: CustomImageView(imagePath: ImageConstant.imgIcons29, height: 32.adaptSize, width: 32.adaptSize, radius: BorderRadius.circular(16.h), alignment: Alignment.center, onTap: () {onTapImgIcons1(context);}))])), Container(padding: EdgeInsets.only(top: 16.v, bottom: 15.v), decoration: AppDecoration.outlineGray300, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomOutlinedButton(height: 33.v, width: 123.h, text: "lbl_services".tr, leftIcon: Container(margin: EdgeInsets.only(right: 16.h), child: CustomImageView(imagePath: ImageConstant.imgProfileWhiteA700, height: 16.adaptSize, width: 16.adaptSize)), buttonStyle: CustomButtonStyles.outlineGrayTL16), Container(height: 32.adaptSize, width: 32.adaptSize, decoration: AppDecoration.outlinePrimary7.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: CustomImageView(imagePath: ImageConstant.imgIcons29, height: 32.adaptSize, width: 32.adaptSize, radius: BorderRadius.circular(16.h), alignment: Alignment.center))])), SizedBox(height: 16.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(margin: EdgeInsets.only(top: 8.v, bottom: 5.v), decoration: BoxDecoration(borderRadius: BorderRadiusStyle.circleBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgIcons30, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(bottom: 2.v)), Padding(padding: EdgeInsets.only(left: 16.h), child: Text("msg_food_beverages".tr, style: theme.textTheme.titleSmall))])), Container(height: 32.adaptSize, width: 32.adaptSize, decoration: AppDecoration.outlinePrimary7.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: CustomImageView(imagePath: ImageConstant.imgIcons29, height: 32.adaptSize, width: 32.adaptSize, radius: BorderRadius.circular(16.h), alignment: Alignment.center, onTap: () {onTapImgIcons2(context);}))])))]))); } 
/// Navigates to the k27Screen when the action is triggered.
onTapSend(BuildContext context) { NavigatorService.pushNamed(AppRoutes.k27Screen, ); } 
/// Navigates to the k32Screen when the action is triggered.
onTapImgIcons(BuildContext context) { NavigatorService.pushNamed(AppRoutes.k32Screen, ); } 
/// Navigates to the k32Screen when the action is triggered.
onTapImgIcons1(BuildContext context) { NavigatorService.pushNamed(AppRoutes.k32Screen, ); } 
/// Navigates to the k32Screen when the action is triggered.
onTapImgIcons2(BuildContext context) { NavigatorService.pushNamed(AppRoutes.k32Screen, ); } 
 }