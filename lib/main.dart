import 'package:extagram_flutter/state/auth/backend/authenticator.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Extagram',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.pink,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Extagram'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Extagram'),
            ElevatedButton(
              onPressed: () async {
                final result = await Authenticator().loginWithGoogle();
                print(result);
              },
              child: const Text('Google'),
            ),
            ElevatedButton(
              onPressed: () async {
                final result = await Authenticator().loginWithFacebook();
                print(result);
              },
              child: const Text('Facebook'),
            ),
          ],
        ),
      ),
    );
  }
}
