import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Заголовок приложения"),
          backgroundColor: Colors.lightGreenAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox.expand(
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text("Форматы данных"),
                const Text("Форматы данных описание"),
                Row(
                  children: [
                    Image.network(
                      "https://avatars.mds.yandex.net/i?id=b077db8987f4d51d3ef4757e2e923ae7_l-12795182-images-thumbs&n=13",
                      width: 120,
                      height: 120,
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Icon(Icons.person, size: 60),
                    Expanded(
                      child: Text(
                        "Буренин А.А. ИКБО-07-22",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
