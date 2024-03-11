import 'package:advanced_4/models/user_model.dart';
import 'package:advanced_4/services/get_service.dart';
import 'package:advanced_4/services/hive_service.dart';
import 'package:flutter/material.dart';

class DatabaseScreen extends StatefulWidget {
  static const String id = "/database_page";
  const DatabaseScreen({super.key});

  @override
  State<DatabaseScreen> createState() => _DatabaseScreenState();
}

class _DatabaseScreenState extends State<DatabaseScreen> {

  @override
  void initState() {
    super.initState();
    // Use Hive Service
    User user = User(email: "abrorovyusuf25@gmail.com", password: "PDPscr221b");
    GetService.storeUser(user);
    HiveService.storeUser(user);

    var retrievedUser = HiveService.loadUser();
    var retrievedUser2 = GetService.loadUser();
    print("\n\n\n\n");
    print(retrievedUser.toJson().toString());
    print(retrievedUser2.toJson().toString());
    print("\n\n\n\n");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Database"),
      ),
      body: const Center(
        child: Text("Local Databases"),
      ),
    );
  }
}
