// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:bcc33_s_application1/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';import 'bw2_item_model.dart';/// This class defines the variables used in the [k51_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K51Model extends Equatable {K51Model({this.dropdownItemList = const [], this.bw2ItemList = const [], }) {  }

List<SelectionPopupModel> dropdownItemList;

List<Bw2ItemModel> bw2ItemList;

K51Model copyWith({List<SelectionPopupModel>? dropdownItemList, List<Bw2ItemModel>? bw2ItemList, }) { return K51Model(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
bw2ItemList : bw2ItemList ?? this.bw2ItemList,
); } 
@override List<Object?> get props => [dropdownItemList,bw2ItemList];
 }
