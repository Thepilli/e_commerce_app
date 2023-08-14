import 'package:e_commerce_app/models/user_model.dart';
import 'package:e_commerce_app/services/user_service.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
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
          child: FutureBuilder(
        future: UserApiService.getAllUsers(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (BuildContext context, int index) {
              List<UserModel>? users = snapshot.data;
              return ListTile(
                tileColor: Theme.of(context).colorScheme.secondary,
                leading: CircleAvatar(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: FancyShimmerImage(height: 100, boxFit: BoxFit.contain, imageUrl: users![index].avatar))),
                title: Text(users[index].name),
                subtitle: Text(users[index].email),
                trailing: Text(users[index].role),
              );
            },
          );
        },
      )),
    );
  }
}
