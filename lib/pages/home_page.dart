import 'package:flutter/material.dart';
import 'package:flutter_softyfact/features/auth/screens/auth_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String add = "Coming Soon";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SoftyFact Online Store'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'SoftyFact Company',
              style: TextStyle(fontSize: 23),
            ),
            Text(
              add.toString(),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Builder(builder: (context) {
          return FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, AuthScreen.routeName);
            },
            child: const Icon(Icons.route),
          );
        }),
      ),
    );
  }
}
