import 'package:svens_bakery/infrastructure/models/data/bakery_item.dart';
import 'package:svens_bakery/infrastructure/services/app_constants.dart';

class DummyData {
  final List<BakeryItem> bakeryItems = [
    BakeryItem(
        photo: AppConstants.wheatBreadBunsPng, name: "WHEAT BREADS BUNS"),
    BakeryItem(photo: AppConstants.wildBreadsPng, name: "wild breads"),
    BakeryItem(photo: AppConstants.lowCarbBreadPng, name: "LOW CARB BREADS"),
    BakeryItem(
        photo: AppConstants.heideBreadsAndBunsPng, name: "HEIDE BREADS & BUNS"),
    BakeryItem(photo: AppConstants.baguettesPng, name: "BAGUETTES"),
    BakeryItem(photo: AppConstants.glutenLowBreadPng, name: "GLUTEN LOW BREAD"),
  ];
}
