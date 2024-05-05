import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'active_and_inactive_expenses_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({Key? key, required this.itemModel, required this.isSelected}) : super(key: key);
  final AllExpensesItemModel itemModel;
  final bool isSelected;
  

  @override
  Widget build(BuildContext context) {
    return isSelected? ActiveAllExpensesItem(itemModel: itemModel): InActiveAllExpensesItem(itemModel: itemModel);
  }
}
