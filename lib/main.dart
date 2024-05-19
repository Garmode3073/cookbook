import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}
///A86kkdWw/XJpW+PJWwe5yA==fwqDwm861bdXCfkU
///api ninjas
///  "predeploy": "npm run build",
///
/// 9a20341acf3d493a921ba12e47b21888
/// spoon
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  RecipeHomePage(),
    );
  }
}
