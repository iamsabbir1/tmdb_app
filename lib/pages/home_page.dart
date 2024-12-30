import 'package:flutter/material.dart';

//widgets
import '../widgets/navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(),
      body: Column(
        children: [
          Container(
            height: 400,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.red,
                ),
              ),
            ),
            child: const Column(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
