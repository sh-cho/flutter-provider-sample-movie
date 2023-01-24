import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/count_provider.dart';

class ViewCountWidget extends StatelessWidget {
  const ViewCountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint("[CountHomeWidget] build!");

    return Center(
      child: Consumer<CountProvider>(
        builder: (context, provider, child) {
          return Text(
            Provider.of<CountProvider>(context).count.toString(),
            style: TextStyle(fontSize: 60),
          );
        },
      ),
    );
  }
}
