// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'subtitle4_item_model.dart';/// This class defines the variables used in the [k41_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K41Model extends Equatable {K41Model({this.subtitle4ItemList = const []}) {  }

List<Subtitle4ItemModel> subtitle4ItemList;

K41Model copyWith({List<Subtitle4ItemModel>? subtitle4ItemList}) { return K41Model(
subtitle4ItemList : subtitle4ItemList ?? this.subtitle4ItemList,
); } 
@override List<Object?> get props => [subtitle4ItemList];
 }
