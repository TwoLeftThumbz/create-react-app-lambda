// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'my_item_model.dart';/// This class defines the variables used in the [k53_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K53Model extends Equatable {K53Model({this.myItemList = const []}) {  }

List<MyItemModel> myItemList;

K53Model copyWith({List<MyItemModel>? myItemList}) { return K53Model(
myItemList : myItemList ?? this.myItemList,
); } 
@override List<Object?> get props => [myItemList];
 }
