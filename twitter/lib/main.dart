import 'package:flutter/material.dart';
//import '../screens/signin_screen.dart';
import 'package:provider/provider.dart';
import '../providers/share_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SharedState()),
      ],
      child: const MaterialApp(
      ),
    );
  }
}
