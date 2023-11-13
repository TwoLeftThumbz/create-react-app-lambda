// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'icons1_item_model.dart';import 'bigctas1_item_model.dart';/// This class defines the variables used in the [k26_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K26Model extends Equatable {K26Model({this.icons1ItemList = const [], this.bigctas1ItemList = const [], }) {  }

List<Icons1ItemModel> icons1ItemList;

List<Bigctas1ItemModel> bigctas1ItemList;

K26Model copyWith({List<Icons1ItemModel>? icons1ItemList, List<Bigctas1ItemModel>? bigctas1ItemList, }) { return K26Model(
icons1ItemList : icons1ItemList ?? this.icons1ItemList,
bigctas1ItemList : bigctas1ItemList ?? this.bigctas1ItemList,
); } 
@override List<Object?> get props => [icons1ItemList,bigctas1ItemList];
 }
