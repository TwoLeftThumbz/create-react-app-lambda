// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'bigctas2_item_model.dart';import 'icons2_item_model.dart';/// This class defines the variables used in the [k47_page],
/// and is typically used to hold data that is passed between different parts of the application.
class K47Model extends Equatable {K47Model({this.bigctas2ItemList = const [], this.icons2ItemList = const [], }) {  }

List<Bigctas2ItemModel> bigctas2ItemList;

List<Icons2ItemModel> icons2ItemList;

K47Model copyWith({List<Bigctas2ItemModel>? bigctas2ItemList, List<Icons2ItemModel>? icons2ItemList, }) { return K47Model(
bigctas2ItemList : bigctas2ItemList ?? this.bigctas2ItemList,
icons2ItemList : icons2ItemList ?? this.icons2ItemList,
); } 
@override List<Object?> get props => [bigctas2ItemList,icons2ItemList];
 }
