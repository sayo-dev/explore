import 'package:explore/screens/home.dart';
import 'package:explore/screens/splash.dart';
import 'package:explore/utils/components/theme.dart';
import 'package:explore/utils/shared_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await ThemeValueStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      builder: (context, _) {
        final themeProvider = context.watch<ThemeProvider>();
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: themeProvider.themeMode,
          theme: DefaultTheme.lightTheme,
          darkTheme: DefaultTheme.darkTheme,
          initialRoute: '/splash',
          routes: {
            '/splash': (context) => SplashScreen(),
            '/home': (context) => Home()
          },
        );

      }
    );
  }
}

