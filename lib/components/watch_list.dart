import 'package:flutter/cupertino.dart';

import '../widgets/app_large_text.dart';
import '../widgets/colors.dart';

class WatchList extends StatelessWidget {
  const WatchList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          AppLargeText(text: 'WacthList', size: 25),
          AppLargeText(text: "see all", color: AppColor.greenColor)
        ],
      ),
    );
  }
}
