import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_testing/controller/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Providers>(context);
    return Scaffold(
      appBar: AppBar( 
        title: const Text('Counter'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('${provider.count}'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                provider.increment();
              },
              child: const Text('increment'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                provider.decrement();
              },
              child: const Text('decrement'),
            ),
          ],
        ),
      ),
    );
  }
}
