// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'bw1_item_model.dart';/// This class defines the variables used in the [k50_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class K50Model extends Equatable {K50Model({this.bw1ItemList = const []}) {  }

List<Bw1ItemModel> bw1ItemList;

K50Model copyWith({List<Bw1ItemModel>? bw1ItemList}) { return K50Model(
bw1ItemList : bw1ItemList ?? this.bw1ItemList,
); } 
@override List<Object?> get props => [bw1ItemList];
 }
