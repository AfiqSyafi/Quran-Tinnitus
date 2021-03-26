import 'package:flutter/material.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';
import 'package:quran_tinnitus/mdrawer.dart';
import 'package:quran_tinnitus/screens/auth/auth.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LitAuthInit(
      authProviders: const AuthProviders(
        emailAndPassword: true,
        google: true,
      ),
      child: MaterialApp(
        home: const LitAuthState(
          authenticated: HomePage(),
          unauthenticated: AuthScreen(),
        ),
      ),
    );
  }
}
