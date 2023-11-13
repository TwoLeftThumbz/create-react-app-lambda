import 'bloc/container_bloc.dart';import 'models/container_model.dart';import 'package:bcc33_s_application1/core/app_export.dart';import 'package:bcc33_s_application1/presentation/k47_page/k47_page.dart';import 'package:bcc33_s_application1/widgets/custom_bottom_bar.dart';import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable
class ContainerScreen extends StatelessWidget {ContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<ContainerBloc>(create: (context) => ContainerBloc(ContainerState(containerModelObj: ContainerModel()))..add(ContainerInitialEvent()), child: ContainerScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<ContainerBloc, ContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.k47Page, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context)));}); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Icons4: return "/"; case BottomBarEnum.Icons5: return "/"; case BottomBarEnum.Icons6: return AppRoutes.k47Page; case BottomBarEnum.Icons7: return "/"; case BottomBarEnum.Icons8: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.k47Page: return K47Page.builder(context); default: return DefaultWidget();} } 
 }
