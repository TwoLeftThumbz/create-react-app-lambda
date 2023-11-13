// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'subtitle3_item_model.dart';/// This class defines the variables used in the [k40_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K40Model extends Equatable {K40Model({this.subtitle3ItemList = const []}) {  }

List<Subtitle3ItemModel> subtitle3ItemList;

K40Model copyWith({List<Subtitle3ItemModel>? subtitle3ItemList}) { return K40Model(
subtitle3ItemList : subtitle3ItemList ?? this.subtitle3ItemList,
); } 
@override List<Object?> get props => [subtitle3ItemList];
 }
