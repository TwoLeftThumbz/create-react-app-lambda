// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'subtitle6_item_model.dart';/// This class defines the variables used in the [k52_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K52Model extends Equatable {K52Model({this.subtitle6ItemList = const []}) {  }

List<Subtitle6ItemModel> subtitle6ItemList;

K52Model copyWith({List<Subtitle6ItemModel>? subtitle6ItemList}) { return K52Model(
subtitle6ItemList : subtitle6ItemList ?? this.subtitle6ItemList,
); } 
@override List<Object?> get props => [subtitle6ItemList];
 }
