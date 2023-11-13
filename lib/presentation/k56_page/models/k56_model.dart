// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'beneficiarylist_item_model.dart';/// This class defines the variables used in the [k56_page],
/// and is typically used to hold data that is passed between different parts of the application.
class K56Model extends Equatable {K56Model({this.beneficiarylistItemList = const []}) {  }

List<BeneficiarylistItemModel> beneficiarylistItemList;

K56Model copyWith({List<BeneficiarylistItemModel>? beneficiarylistItemList}) { return K56Model(
beneficiarylistItemList : beneficiarylistItemList ?? this.beneficiarylistItemList,
); } 
@override List<Object?> get props => [beneficiarylistItemList];
 }
