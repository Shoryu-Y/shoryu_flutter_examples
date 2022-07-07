import 'package:amplify_app/common/theme.dart';
import 'package:amplify_app/ui/amplify_authenticator_page.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Amplify App',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      home: const AmplifyAuthenticatorPage(),
    );
  }
}
