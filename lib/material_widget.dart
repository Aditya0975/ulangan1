import 'package:flutter/material.dart';
import 'package:ulangan_1/scaffold_widget.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pengelompokan Nilai Siswa'),
        ),
        body: ScaffoldWidget(),
      ),
    );
  }
}
