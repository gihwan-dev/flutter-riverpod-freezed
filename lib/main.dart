import 'package:flutter/material.dart';
import 'package:riverpod_freezed/pages/collections_page.dart';
import 'package:riverpod_freezed/pages/hotel_list_page.dart';
import 'package:riverpod_freezed/pages/method_page.dart';
import 'package:riverpod_freezed/pages/mutable_person_page.dart';
import 'package:riverpod_freezed/widgets/custom_button.dart';

import 'pages/person_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Freezed Data Class",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20),
          children: const [
            CustomButton(
              title: "Person",
              children: PersonPage(),
            ),
            CustomButton(
              title: 'Mutable Person',
              children: MutablePersonPage(),
            ),
            CustomButton(
              title: 'Collections',
              children: CollectionsPage(),
            ),
            CustomButton(
              title: 'Method',
              children: MethodPage(),
            ),
            CustomButton(
              title: 'Hotels',
              children: HotelListPage(),
            )
          ],
        ),
      ),
    );
  }
}
