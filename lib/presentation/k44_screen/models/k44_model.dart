// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'ninetyfour_item_model.dart';/// This class defines the variables used in the [k44_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K44Model extends Equatable {K44Model({this.ninetyfourItemList = const []}) {  }

List<NinetyfourItemModel> ninetyfourItemList;

K44Model copyWith({List<NinetyfourItemModel>? ninetyfourItemList}) { return K44Model(
ninetyfourItemList : ninetyfourItemList ?? this.ninetyfourItemList,
); } 
@override List<Object?> get props => [ninetyfourItemList];
 }
