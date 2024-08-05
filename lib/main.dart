import 'package:fakegram/views/screens/auth/login_screen.dart';
import 'package:fakegram/views/utils/themes/dark_theme.dart';
import 'package:fakegram/views/utils/themes/light_theme.dart';
import 'package:fakegram/views/utils/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: themeProvider.themeMode,
          home: LoginScreen(),
        );
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Day and Night Theme'),
        actions: [
          Switch(
            value: themeProvider.themeMode == ThemeMode.dark,
            onChanged: (value) {
              themeProvider.toggleTheme(value);
            },
          ),
          IconButton(
            icon: Icon(Icons.brightness_auto),
            onPressed: () {
              themeProvider.setSystemTheme();
            },
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Hello, Flutter!',
          style: Theme.of(context).textTheme.labelMedium,
        ),
      ),
    );
  }
}
