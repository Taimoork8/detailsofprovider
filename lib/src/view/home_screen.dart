import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/object_provider.dart';
import '../widget/cheap_object.dart';
import '../widget/expensive_widget.dart';
import '../widget/object_provider_widget.dart';
import 'dart:developer' as devtools show log;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Home Screen'),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Row(
              children: const [
                Expanded(child: CheapWidget()),
                Expanded(child: ExpensiveWidget()),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: const [
                Expanded(child: ObjectProviderWidget()),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                      side: const BorderSide(color: Colors.black)),
                  onPressed: () {
                    context.read<ObjectProvider>().start();
                    devtools.log("The Process Started.");
                  },
                  child: const Text('Start'),
                ),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                      side: const BorderSide(color: Colors.black)),
                  onPressed: () {
                    context.read<ObjectProvider>().stop();
                    devtools.log("The Process Stoped.");
                  },
                  child: const Text('Stop'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
