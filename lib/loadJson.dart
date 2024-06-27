import 'dart:async';
import 'dart:convert';

import 'package:cooking/Layout.dart';
import 'package:cooking/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'CookingData.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CookingData> data = [];

  Future<void> fetchLocalData(String filename) async {
    final String response = await rootBundle.loadString(filename);
    final List<dynamic> jsonResponse = jsonDecode(response);
    setState(() {
      data = jsonResponse.map((json) => CookingData.fromJson(json)).toList();
    });
  }

  @override
  void initState() {
    super.initState();
    fetchLocalData(
        'assets/cooking.json'); // Load CSV data when the widget initializes
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: const DrawerSection(),
      body: data.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : LayoutGrid(data: data),
    );
  }
}
