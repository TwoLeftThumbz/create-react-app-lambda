import '../k41_screen/widgets/subtitle4_item_widget.dart';import 'bloc/k41_bloc.dart';import 'models/k41_model.dart';import 'models/subtitle4_item_model.dart';import 'package:bcc33_s_application1/core/app_export.dart';import 'package:bcc33_s_application1/widgets/app_bar/appbar_leading_image.dart';import 'package:bcc33_s_application1/widgets/app_bar/appbar_title.dart';import 'package:bcc33_s_application1/widgets/app_bar/appbar_trailing_iconbutton.dart';import 'package:bcc33_s_application1/widgets/app_bar/custom_app_bar.dart';import 'package:bcc33_s_application1/widgets/custom_elevated_button.dart';import 'package:bcc33_s_application1/widgets/custom_icon_button.dart';import 'package:bcc33_s_application1/widgets/custom_text_form_field.dart';import 'package:flutter/material.dart';class K41Screen extends StatelessWidget {const K41Screen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<K41Bloc>(create: (context) => K41Bloc(K41State(k41ModelObj: K41Model()))..add(K41InitialEvent()), child: K41Screen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 28.v), child: Padding(padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 5.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_declined".tr, style: theme.textTheme.titleSmall), Opacity(opacity: 0.5, child: Row(children: [Padding(padding: EdgeInsets.only(top: 38.v, bottom: 12.v), child: Text("lbl5".tr, style: theme.textTheme.headlineSmall)), Text("lbl_751".tr, style: CustomTextStyles.displayLargeGray300)]))])), SizedBox(height: 23.v), Container(padding: EdgeInsets.all(24.h), decoration: AppDecoration.outlineBlack900261.copyWith(borderRadius: BorderRadiusStyle.roundedBorder32), child: Column(mainAxisSize: MainAxisSize.min, children: [Container(padding: EdgeInsets.all(6.h), decoration: AppDecoration.outlineOnPrimaryContainer3.copyWith(borderRadius: BorderRadiusStyle.circleBorder24), child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Opacity(opacity: 0.5, child: CustomImageView(imagePath: ImageConstant.imgIconsPink800, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(bottom: 38.v))), Expanded(child: Container(width: 246.h, margin: EdgeInsets.only(left: 1.h, top: 15.v, bottom: 13.v), child: Text("msg_this_is_a_very_important".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.labelLargeInterPink800)))])), Container(padding: EdgeInsets.only(top: 16.v, bottom: 15.v), decoration: AppDecoration.outlineOnPrimaryContainer1, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.symmetric(vertical: 9.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_to".tr, style: theme.textTheme.titleSmall), SizedBox(height: 3.v), Text("lbl_nike_store".tr, style: theme.textTheme.titleSmall)])), CustomIconButton(height: 56.adaptSize, width: 56.adaptSize, padding: EdgeInsets.all(16.h), decoration: IconButtonStyleHelper.fillOnPrimaryContainer, child: CustomImageView(imagePath: ImageConstant.imgAvatars56x56))])), SizedBox(height: 24.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Row(children: [Container(width: 89.h, margin: EdgeInsets.only(top: 8.v, bottom: 5.v), decoration: BoxDecoration(borderRadius: BorderRadiusStyle.circleBorder8), child: Row(children: [CustomImageView(imagePath: ImageConstant.imgIcons28, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(bottom: 2.v)), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_shopping".tr, style: theme.textTheme.titleSmall))])), Padding(padding: EdgeInsets.only(left: 24.h), child: CustomIconButton(height: 32.adaptSize, width: 32.adaptSize, padding: EdgeInsets.all(8.h), decoration: IconButtonStyleHelper.fillOnPrimary, child: CustomImageView(imagePath: ImageConstant.imgIcons25)))]))), SizedBox(height: 25.v), Opacity(opacity: 0.05, child: Divider()), Container(padding: EdgeInsets.only(top: 14.v, bottom: 13.v), decoration: AppDecoration.outlineOnPrimaryContainer1, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(top: 3.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_paid_on".tr, style: theme.textTheme.titleSmall), SizedBox(height: 4.v), Text("msg_august_11th_2023".tr, style: theme.textTheme.titleSmall)])), Padding(padding: EdgeInsets.only(top: 24.v, right: 4.h), child: Text("lbl_copied".tr, style: theme.textTheme.titleSmall))])), Container(padding: EdgeInsets.only(top: 14.v, bottom: 13.v), decoration: AppDecoration.outlineOnPrimaryContainer1, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 3.v, bottom: 1.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_paid_with".tr, style: theme.textTheme.titleSmall), SizedBox(height: 2.v), Text("lbl_card_5678".tr, style: theme.textTheme.titleSmall)])), Padding(padding: EdgeInsets.only(top: 24.v), child: Text("lbl_copied".tr, style: theme.textTheme.titleSmall))])), Container(padding: EdgeInsets.only(top: 14.v, bottom: 13.v), decoration: AppDecoration.outlineOnPrimaryContainer1, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(top: 3.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_paid_via".tr, style: theme.textTheme.titleSmall), SizedBox(height: 4.v), Text("lbl_apple_pay".tr, style: theme.textTheme.titleSmall)])), CustomImageView(imagePath: ImageConstant.imgPaymentlogo, height: 16.v, width: 39.h, margin: EdgeInsets.only(top: 23.v, right: 4.h))])), _buildSubtitle(context), SizedBox(height: 24.v), Align(alignment: Alignment.centerLeft, child: Text("msg_trasaction_number".tr, style: theme.textTheme.titleSmall)), SizedBox(height: 7.v), BlocSelector<K41Bloc, K41State, TextEditingController?>(selector: (state) => state.cellInfoController, builder: (context, cellInfoController) {return CustomTextFormField(controller: cellInfoController, hintText: "lbl_987654321032".tr, textInputAction: TextInputAction.done, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v), child: CustomImageView(imagePath: ImageConstant.imgIcons26, height: 24.adaptSize, width: 24.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 56.v), contentPadding: EdgeInsets.only(left: 16.h, top: 19.v, bottom: 19.v));}), SizedBox(height: 8.v), Container(padding: EdgeInsets.symmetric(horizontal: 14.h, vertical: 21.v), decoration: AppDecoration.outlineOnPrimaryContainer3.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_add_invoice".tr, style: theme.textTheme.titleSmall), SizedBox(height: 4.v), SizedBox(width: 157.h, child: Text("msg_max_5mb_pdf_png".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleSmall))]), Spacer(), Padding(padding: EdgeInsets.only(top: 21.v, bottom: 17.v), child: Text("lbl_copied".tr, style: theme.textTheme.titleSmall)), Opacity(opacity: 0.5, child: CustomImageView(imagePath: ImageConstant.imgIcons27, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.symmetric(vertical: 16.v)))])), SizedBox(height: 24.v), CustomElevatedButton(text: "lbl_send".tr.toUpperCase(), onPressed: () {onTapSend(context);})]))])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 40.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgIcons1, margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 16.v)), title: AppbarTitle(text: "msg_transaction_details".tr, margin: EdgeInsets.only(left: 16.h)), actions: [AppbarTrailingIconbutton(imagePath: ImageConstant.imgAvatarsGray900, margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.v))]); } 
/// Section Widget
Widget _buildSubtitle(BuildContext context) { return BlocSelector<K41Bloc, K41State, K41Model?>(selector: (state) => state.k41ModelObj, builder: (context, k41ModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 1.v);}, itemCount: k41ModelObj?.subtitle4ItemList.length ?? 0, itemBuilder: (context, index) {Subtitle4ItemModel model = k41ModelObj?.subtitle4ItemList[index] ?? Subtitle4ItemModel(); return Subtitle4ItemWidget(model);});}); } 
/// Navigates to the k27Screen when the action is triggered.
onTapSend(BuildContext context) { NavigatorService.pushNamed(AppRoutes.k27Screen, ); } 
 }