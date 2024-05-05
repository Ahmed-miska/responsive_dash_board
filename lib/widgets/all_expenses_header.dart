import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/range_option.dart';


class AllExpensesHeader extends StatefulWidget {
  const AllExpensesHeader({Key? key}) : super(key: key);

  @override
  State<AllExpensesHeader> createState() => _AllExpensesHeaderState();
}

class _AllExpensesHeaderState extends State<AllExpensesHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        const RangeOption(),
       
      ],
    );
  }
}
