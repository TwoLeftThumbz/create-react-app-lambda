// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'icons_item_model.dart';import 'bigctas_item_model.dart';/// This class defines the variables used in the [k25_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K25Model extends Equatable {K25Model({this.iconsItemList = const [], this.bigctasItemList = const [], }) {  }

List<IconsItemModel> iconsItemList;

List<BigctasItemModel> bigctasItemList;

K25Model copyWith({List<IconsItemModel>? iconsItemList, List<BigctasItemModel>? bigctasItemList, }) { return K25Model(
iconsItemList : iconsItemList ?? this.iconsItemList,
bigctasItemList : bigctasItemList ?? this.bigctasItemList,
); } 
@override List<Object?> get props => [iconsItemList,bigctasItemList];
 }
