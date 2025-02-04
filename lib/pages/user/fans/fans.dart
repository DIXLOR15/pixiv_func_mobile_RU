import 'package:flutter/material.dart';
import 'package:pixiv_dart_api/model/user_preview.dart';
import 'package:pixiv_func_mobile/components/user_previewer/user_previewer.dart';
import 'package:pixiv_func_mobile/data_content/data_content.dart';

import 'source.dart';

class UserFansContent extends StatelessWidget {
  final int id;

  const UserFansContent({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataContent<UserPreview>(
      sourceList: UserFansListSource(id),
      itemBuilder: (BuildContext context, UserPreview item, bool visibility, int index) {
        return UserPreviewer(
          userPreview: item,
          useHero: visibility,
        );
      },
    );
  }
}
