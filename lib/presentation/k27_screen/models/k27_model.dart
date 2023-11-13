// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:bcc33_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [k27_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K27Model extends Equatable {K27Model({this.dropdownItemList = const []}) {  }

List<SelectionPopupModel> dropdownItemList;

K27Model copyWith({List<SelectionPopupModel>? dropdownItemList}) { return K27Model(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [dropdownItemList];
 }
