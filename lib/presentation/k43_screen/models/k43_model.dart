// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'buttonsmall_item_model.dart';/// This class defines the variables used in the [k43_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K43Model extends Equatable {K43Model({this.buttonsmallItemList = const []}) {  }

List<ButtonsmallItemModel> buttonsmallItemList;

K43Model copyWith({List<ButtonsmallItemModel>? buttonsmallItemList}) { return K43Model(
buttonsmallItemList : buttonsmallItemList ?? this.buttonsmallItemList,
); } 
@override List<Object?> get props => [buttonsmallItemList];
 }
