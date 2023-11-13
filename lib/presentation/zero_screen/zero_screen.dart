import 'bloc/zero_bloc.dart';import 'models/zero_model.dart';import 'package:bcc33_s_application1/core/app_export.dart';import 'package:flutter/material.dart';class ZeroScreen extends StatelessWidget {const ZeroScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<ZeroBloc>(create: (context) => ZeroBloc(ZeroState(zeroModelObj: ZeroModel()))..add(ZeroInitialEvent()), child: ZeroScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<ZeroBloc, ZeroState>(builder: (context, state) {return SafeArea(child: Scaffold(body: SizedBox(height: mediaQueryData.size.height, width: double.maxFinite)));}); } 
 }
