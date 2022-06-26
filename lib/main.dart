import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /*return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );*/

    return MacosApp(
      title: 'Welcome to Flutter',
      theme: MacosThemeData.light(),
      darkTheme: MacosThemeData.dark(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: MacosWindow(
        backgroundColor: MacosColor(0xff22131c),
        child: MacosScaffold(
          toolBar: const ToolBar(
            title: Text('Traccar Client'),
            centerTitle: true,
          ),
          backgroundColor: MacosColor(0xfff5eef2),
          children: [
            ContentArea(builder: (context, scrollController) {
              return SingleChildScrollView(
                child: Column(
                  children: const [
                    Text("data"),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
