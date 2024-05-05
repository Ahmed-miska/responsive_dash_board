import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.imageColor,
    this.backgroundColor,
  });
  final String image;
  final Color? imageColor, backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          padding: const EdgeInsets.all(14),
          decoration: ShapeDecoration(
            color: backgroundColor ?? const Color(0xFFFAFAFA),
            shape: const OvalBorder(),
          ),
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(imageColor ?? const Color(0xFF4EB7F2), BlendMode.srcIn),
          ),
        ),
        const Spacer(),
        Icon(Icons.arrow_forward_ios_outlined, color: imageColor == null ? const Color(0xFF064061) : Colors.white),
      ],
    );
  }
}
