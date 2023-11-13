// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'cancelled_item_model.dart';/// This class defines the variables used in the [k58_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K58Model extends Equatable {K58Model({this.cancelledItemList = const []}) {  }

List<CancelledItemModel> cancelledItemList;

K58Model copyWith({List<CancelledItemModel>? cancelledItemList}) { return K58Model(
cancelledItemList : cancelledItemList ?? this.cancelledItemList,
); } 
@override List<Object?> get props => [cancelledItemList];
 }
