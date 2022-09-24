import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../bottombar.dart';
import '../helper/navigation.dart';
import './registerscreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isLoading = false;
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor))
          : SingleChildScrollView(
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const Text('Kuppai',
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF15AC51))),
                        const SizedBox(height: 10),
                        const Image(
                            image: AssetImage('logo.png'),
                            height: 400,
                            width: 360),
                        TextFormField(
                          decoration: textInputDecoration.copyWith(
                            labelText: 'Email',
                            prefix: Icon(Icons.mail,
                                color: Theme.of(context).primaryColor),
                          ),
                          onChanged: (val) {
                            setState(() {
                              email = val;
                            });
                          },
                          validator: (val) {
                            return RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(val!)
                                ? null
                                : "Please Enter a Valid Email";
                          },
                        ),
                        const SizedBox(height: 15),
                        TextFormField(
                          obscureText: true,
                          decoration: textInputDecoration.copyWith(
                            labelText: 'Password',
                            prefix: Icon(Icons.lock,
                                color: Theme.of(context).primaryColor),
                          ),
                          onChanged: (val) {
                            setState(() {
                              password = val;
                            });
                          },
                          validator: (val) {
                            val!.length < 6
                                ? "Password must be 6 characters long"
                                : null;
                          },
                        ),
                        const SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Theme.of(context).primaryColor,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                onPressed: () {
                                  login();
                                },
                                child: const Text(
                                  'Sign In',
                                  style: TextStyle(fontSize: 16),
                                )),
                          ),
                        ),
                        Text.rich(TextSpan(
                            text: "Don't have an Account?",
                            style: const TextStyle(
                                color: Colors.black, fontSize: 14),
                            children: [
                              TextSpan(
                                  text: 'Sign Up Now',
                                  style: const TextStyle(
                                      color: Color(0xFF15AC51),
                                      decoration: TextDecoration.underline),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      nextScreenReplace(
                                          context, const RegisterScreen());
                                    })
                            ]))
                      ],
                    ),
                  )),
            ),
    );
  }

  login() {
    nextScreenReplace(
        context,
        BottomBar(
          title: 'Kuppai',
        ));
  }
}
