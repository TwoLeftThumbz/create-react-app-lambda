// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'subtitle5_item_model.dart';/// This class defines the variables used in the [k42_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K42Model extends Equatable {K42Model({this.subtitle5ItemList = const []}) {  }

List<Subtitle5ItemModel> subtitle5ItemList;

K42Model copyWith({List<Subtitle5ItemModel>? subtitle5ItemList}) { return K42Model(
subtitle5ItemList : subtitle5ItemList ?? this.subtitle5ItemList,
); } 
@override List<Object?> get props => [subtitle5ItemList];
 }
