import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';
import '../models/all_expenses_item_model.dart';
import '../utils/app_images.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({Key? key}) : super(key: key);
  static const items = [
    AllExpensesItemModel(image: Assets.imagesBalance, name: 'Balance', date: 'April 2022', price: r'$20,129'),
    AllExpensesItemModel(image: Assets.imagesIncome, name: 'Income', date: 'April 2022', price: r'$20.129'),
    AllExpensesItemModel(image: Assets.imagesExpenses, name: 'Expenses', date: 'April 2022', price: r'$20.129'),
  ];

  @override
  State<AllExpensesItemListView> createState() => _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: AllExpensesItemListView.items.asMap().entries.map(
        (e) {
          int index = e.key;
          var item = e.value;
          return Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
                child: AllExpensesItem(
                  isSelected: selectedIndex == index,
                  itemModel: item,
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
