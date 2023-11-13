// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'datamosaic_item_model.dart';/// This class defines the variables used in the [k45_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K45Model extends Equatable {K45Model({this.datamosaicItemList = const []}) {  }

List<DatamosaicItemModel> datamosaicItemList;

K45Model copyWith({List<DatamosaicItemModel>? datamosaicItemList}) { return K45Model(
datamosaicItemList : datamosaicItemList ?? this.datamosaicItemList,
); } 
@override List<Object?> get props => [datamosaicItemList];
 }
