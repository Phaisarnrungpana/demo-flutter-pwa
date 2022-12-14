import 'package:demo_pwa/pages/camera_page.dart';
import 'package:demo_pwa/pages/counter_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demo Flutter PWA')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => Navigator.push(context, CounterPage.route()),
                child: const Text('Goto Counter Page')),
            const SizedBox(height: 25),
            ElevatedButton(
                onPressed: () => Navigator.push(context, CameraPage.route()),
                child: const Text('Goto Camera Page'))
          ],
        ),
      ),
    );
  }
}
