import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:norq_machine_test/data/models/cart_items_model.dart';
import 'package:norq_machine_test/ui/pages/home_screen/home_screen.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async{
    WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  Hive.registerAdapter(CartItemAdapter());
  // Hive.registerAdapter(DataAdapter());
  // Hive.registerAdapter(DataAdapterCust());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}