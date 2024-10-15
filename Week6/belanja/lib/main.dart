import 'package:flutter/material.dart';
import 'package:belanja/pages/home_page.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:go_router/go_router.dart';
import 'package:belanja/models/item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //penggunaan go_route
  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: '/item',
        builder: (context, state) {
          final Item item = state.extra as Item; // Mengambil data dari extra
          return ItemPage(item: item);
        },
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Shopping App',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
    );
  }
}
