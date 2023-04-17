import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/object_provider.dart';

class ObjectProviderWidget extends StatelessWidget {
  const ObjectProviderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ObjectProvider>();
    return Container(
      height: 150,
      color: Colors.cyan.shade900,
      child: Column(
        children: [
          const Text('Object Provider Widget'),
          const Text('ID : '),
          Text(provider.id),
        ],
      ),
    );
  }
}
