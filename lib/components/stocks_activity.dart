import 'package:flutter/cupertino.dart';

import '../widgets/app_large_text.dart';

class StocksActivity extends StatelessWidget {
  const StocksActivity({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      child: const AppLargeText(text: 'Stocks Activity', size: 25),
    );
  }
}
