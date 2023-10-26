import 'package:flutter/material.dart';
import 'package:ftpconnecttest/EFITEPE.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final EFITEPE ftp = EFITEPE();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("FTP")),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(onPressed: () => {ftp.conectar()}),
              FloatingActionButton(
                onPressed: () async {
                  bool sera = await ftp.ftpConnect.checkFolderExistence('file');
                  print(sera);
                },
              ),
            ],
          ),
        ));
  }
}
