import 'package:flutter/material.dart';

/// 🏠 Home Page (default page)
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("🏠 Home Page")),
    );
  }
}
