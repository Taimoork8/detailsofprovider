import 'package:detailsofprovider/src/provider/object_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../component/object.dart';

class CheapWidget extends StatelessWidget {
  const CheapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cheapObject = context.select<ObjectProvider, CheapObject>(
      (provider) => provider.cheapObject,
    );
    return Container(
      height: 100,
      color: Colors.yellowAccent,
      child: Column(
        children: [
          const Text('Cheap Object'),
          const Text('Last Updated'),
          Text(cheapObject.lasUpdated),
        ],
      ),
    );
  }
}
