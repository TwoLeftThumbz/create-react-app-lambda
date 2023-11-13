// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'subtitle2_item_model.dart';/// This class defines the variables used in the [k39_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K39Model extends Equatable {K39Model({this.subtitle2ItemList = const []}) {  }

List<Subtitle2ItemModel> subtitle2ItemList;

K39Model copyWith({List<Subtitle2ItemModel>? subtitle2ItemList}) { return K39Model(
subtitle2ItemList : subtitle2ItemList ?? this.subtitle2ItemList,
); } 
@override List<Object?> get props => [subtitle2ItemList];
 }
