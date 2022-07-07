import 'package:amplify_app/common/theme.dart';
import 'package:amplify_app/ui/home_page.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:flutter/material.dart';

class AmplifyAuthenticatorPage extends StatelessWidget {
  const AmplifyAuthenticatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Authenticator(
      signUpForm: SignUpForm.custom(
        fields: [
          SignUpFormField.email(required: true),
          SignUpFormField.name(required: true),
          SignUpFormField.password(),
        ],
      ),
      signInForm: SignInForm.custom(
        fields: [
          SignInFormField.username(),
          SignInFormField.password(),
        ],
      ),
      child: MaterialApp(
        title: 'Amplify App',
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        builder: Authenticator.builder(),
        home: const HomePage(),
      ),
    );
  }
}
