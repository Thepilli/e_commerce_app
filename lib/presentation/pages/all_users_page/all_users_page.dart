import 'package:flutter/material.dart';

class AllUsersPage extends StatelessWidget {
  const AllUsersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All users'),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              tileColor: Theme.of(context).colorScheme.secondary,
              leading: CircleAvatar(child: Image.asset('assets/images/avatar.png')),
              title: const Text('fist last'),
              subtitle: const Text('email@email.com'),
              trailing: const Text('role'),
            );
          },
        ),
      ),
    );
  }
}
