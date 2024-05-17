import 'package:auth_firebase/features/app/user_auth/presentation/pages/home_page.dart';
import 'package:auth_firebase/features/app/user_auth/presentation/pages/sign_up_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'features/app/splash_screen/splash_screen.dart';
import 'features/app/user_auth/presentation/pages/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyA0mRHJK2R7fihClJFy-rJh7kxRe2lo7nU",
        appId: "1:727820122549:web:e724105ea22859883f01fc",
        messagingSenderId: "727820122549",
        projectId: "flutterfirebase-2c4d7",
      ),
    );
  } else {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyA0mRHJK2R7fihClJFy-rJh7kxRe2lo7nU",
        appId: "1:727820122549:web:e724105ea22859883f01fc",
        messagingSenderId: "727820122549",
        projectId: "flutterfirebase-2c4d7",
      ),
    );
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(
        child: SignUpPage(),
      ),
      routes: {
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignUpPage(),
        '/home': (context) => const HomePage(), // Add this route
      },
    );
  }
}