import 'package:acharya_university/presentation/pages/my_drawer/custom_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed:() {
            
          }, icon: Icon(Icons.notifications))
        ],
      ),
      drawer: CustomDrawer(),
    );
  }
}