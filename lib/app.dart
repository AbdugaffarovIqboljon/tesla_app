import 'package:flutter/material.dart';
import 'package:my_tesla/views/home_page_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/first_page",
      routes: {
        "/first_page": (context) => const FirstPageView(),
      },
    );
  }
}
