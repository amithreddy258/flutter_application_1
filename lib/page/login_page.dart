import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String name = '';
  bool changebutton = false;

  moveToHomePage(BuildContext context) async {
    setState(() {
      changebutton = true;
    });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, '/homepage');
    setState(() {
      changebutton = false;
    });
  }
  moveToRegisterPage(BuildContext context) {
      Navigator.pushNamed(context, '/registerpage');
    }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).canvasColor,
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                child: Image.asset(
                  'assets/images/login.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Welcome $name',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Enter Username",
                        labelText: 'Username',
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'username cannnot be empty';
                        } else {
                          return null;
                        }
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: 'Password',
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    InkWell(
                      onTap: () => moveToHomePage(context),
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        decoration: BoxDecoration(
                          color: Theme.of(context).backgroundColor,
                          borderRadius:
                              BorderRadius.circular(changebutton ? 50 : 8),
                        ),
                        alignment: Alignment.center,
                        height: 50,
                        width: changebutton ? 50 : 150,
                        child: changebutton
                            ? const Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : const Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                      ),
                    ),
                    TextButton(
                      onPressed: () => moveToRegisterPage(context),
                      child: const Text('Did not register yet? Register now.'),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// moveToRegisterPage(BuildContext context) {
//   Navigator.pushNamed(context, '/registerpage');
// }
