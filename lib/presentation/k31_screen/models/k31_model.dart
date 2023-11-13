// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'bw_item_model.dart';/// This class defines the variables used in the [k31_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K31Model extends Equatable {K31Model({this.bwItemList = const []}) {  }

List<BwItemModel> bwItemList;

K31Model copyWith({List<BwItemModel>? bwItemList}) { return K31Model(
bwItemList : bwItemList ?? this.bwItemList,
); } 
@override List<Object?> get props => [bwItemList];
 }
