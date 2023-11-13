import '../k56_page/widgets/beneficiarylist_item_widget.dart';import 'bloc/k56_bloc.dart';import 'models/beneficiarylist_item_model.dart';import 'models/k56_model.dart';import 'package:bcc33_s_application1/core/app_export.dart';import 'package:flutter/material.dart';class K56Page extends StatefulWidget {const K56Page({Key? key}) : super(key: key);

@override K56PageState createState() =>  K56PageState();

static Widget builder(BuildContext context) { return BlocProvider<K56Bloc>(create: (context) => K56Bloc(K56State(k56ModelObj: K56Model()))..add(K56InitialEvent()), child: K56Page()); } 
 }
class K56PageState extends State<K56Page> with  AutomaticKeepAliveClientMixin<K56Page> {@override bool get wantKeepAlive =>  true;

@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, decoration: AppDecoration.fillGray, child: Column(children: [SizedBox(height: 24.v), _buildBeneficiaryList(context)])))); } 
/// Section Widget
Widget _buildBeneficiaryList(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 16.h), padding: EdgeInsets.symmetric(horizontal: 24.h), decoration: AppDecoration.fillOnPrimary1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder32), child: BlocSelector<K56Bloc, K56State, K56Model?>(selector: (state) => state.k56ModelObj, builder: (context, k56ModelObj) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 1.v);}, itemCount: k56ModelObj?.beneficiarylistItemList.length ?? 0, itemBuilder: (context, index) {BeneficiarylistItemModel model = k56ModelObj?.beneficiarylistItemList[index] ?? BeneficiarylistItemModel(); return BeneficiarylistItemWidget(model, onTapCellGeneral: () {onTapCellGeneral(context);});});})); } 
/// Navigates to the tabContainerScreen when the action is triggered.
onTapCellGeneral(BuildContext context) { NavigatorService.pushNamed(AppRoutes.tabContainerScreen, ); } 
 }
