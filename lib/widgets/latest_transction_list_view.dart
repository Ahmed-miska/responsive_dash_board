import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class LatestTransctionItemListView extends StatelessWidget {
  const LatestTransctionItemListView({super.key});
  // ignore: constant_identifier_names
  static const Items = [
    UserInfoModel(image: Assets.imagesAvatar1, title: 'Madrani Andi', subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(image: Assets.imagesAvatar2, title: 'Madrani Andi', subtitle: 'Madraniadi20@gmail'),
    UserInfoModel(image: Assets.imagesAvatar3, title: 'Madrani Andi', subtitle: 'Madraniadi20@gmail'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: Items.map((e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e))).toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: Items.length,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //         child: UserInfoListTile(
    //           userInfoModel: Items[index],
    //         ),
    //       );
    //     },
    //   ),
    // );
  }
}
