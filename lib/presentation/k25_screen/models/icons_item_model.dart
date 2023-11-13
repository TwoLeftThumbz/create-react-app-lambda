import '../../../core/app_export.dart';/// This class is used in the [icons_item_widget] screen.
class IconsItemModel {IconsItemModel({this.icons, this.price, this.price1, this.id, }) { icons = icons  ?? ImageConstant.imgIconsPrimary;price = price  ?? "USD";price1 = price1  ?? " 150,475";id = id  ?? ""; }

String? icons;

String? price;

String? price1;

String? id;

 }
