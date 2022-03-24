import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_1/firebase_options.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
    _password = TextEditingController();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: FutureBuilder(
        future: Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform),
        builder: (context, snapshot) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  enableSuggestions: false,
                  autocorrect: false,
                  keyboardType: TextInputType.emailAddress,
                  controller: _email,
                  decoration: InputDecoration(
                    hintText: 'Enter your Email',
                    label: Text('Email'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  obscureText: true,
                  enableSuggestions: false,
                  autocorrect: false,
                  controller: _password,
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                    label: Text('Password'),
                  ),
                ),
              ),
              TextButton(
                onPressed: () async {
                  final email = _email.text;
                  final password = _password.text;
                  final userCredential = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: email, password: password);
                  print(UserCredential);
                },
                child: Text('Register'),
              ),
            ],
          );
        },
      ),
    );
  }
}
