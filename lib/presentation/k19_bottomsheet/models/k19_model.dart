// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'subtitle_item_model.dart';/// This class defines the variables used in the [k19_bottomsheet],
/// and is typically used to hold data that is passed between different parts of the application.
class K19Model extends Equatable {K19Model({this.subtitleItemList = const []}) {  }

List<SubtitleItemModel> subtitleItemList;

K19Model copyWith({List<SubtitleItemModel>? subtitleItemList}) { return K19Model(
subtitleItemList : subtitleItemList ?? this.subtitleItemList,
); } 
@override List<Object?> get props => [subtitleItemList];
 }
