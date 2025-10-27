import 'package:flutter/material.dart';

class AppThemeing extends StatelessWidget {
  const AppThemeing({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doc App',

      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Theming App'),
        ),
        body: const Center(
          child: Text('Hello, Themed World!'),
        ),)
    );
  }
}
