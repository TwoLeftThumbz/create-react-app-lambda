// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:bcc33_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [k54_page],
/// and is typically used to hold data that is passed between different parts of the application.
class K54Model extends Equatable {K54Model({this.dropdownItemList = const []}) {  }

List<SelectionPopupModel> dropdownItemList;

K54Model copyWith({List<SelectionPopupModel>? dropdownItemList}) { return K54Model(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [dropdownItemList];
 }
