// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'subtitle1_item_model.dart';/// This class defines the variables used in the [k38_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K38Model extends Equatable {K38Model({this.subtitle1ItemList = const []}) {  }

List<Subtitle1ItemModel> subtitle1ItemList;

K38Model copyWith({List<Subtitle1ItemModel>? subtitle1ItemList}) { return K38Model(
subtitle1ItemList : subtitle1ItemList ?? this.subtitle1ItemList,
); } 
@override List<Object?> get props => [subtitle1ItemList];
 }
