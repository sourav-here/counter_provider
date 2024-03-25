import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_testing/controller/provider.dart';
import 'package:provider_testing/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> Providers())
      ],
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
