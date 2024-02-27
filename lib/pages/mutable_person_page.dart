import 'package:flutter/material.dart';
import 'package:riverpod_freezed/models/mutable_person.dart';

class MutablePersonPage extends StatelessWidget {
  const MutablePersonPage({super.key});

  @override
  Widget build(BuildContext context) {
    final person1 = MutablePerson(id: 1, name: 'john', email: 'john@gmail.com');
    final person2 = person1.copyWith();
    print(person1 == person2);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mutable Person"),
      ),
    );
  }
}
