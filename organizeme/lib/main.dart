import 'package:flutter/material.dart';
import 'package:organizeme/screens/shop_list/shop_list_page.dart';
import 'package:organizeme/screens/tasks/tasks_page.dart';
import 'package:organizeme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MaterialTheme(Theme.of(context).textTheme).light(),
      darkTheme: MaterialTheme(Theme.of(context).textTheme).dark(),
      initialRoute: '/tasks',
      routes: {
        '/tasks': (context) => TasksPage(),
        '/shoplist': (context) => ShopListPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
