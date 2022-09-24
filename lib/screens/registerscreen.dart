import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import './loginscreen.dart';
import '../bottombar.dart';
import '../constants.dart';
import '../helper/navigation.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isLoading = false;
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _isLoading
            ? Center(
                child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor))
            : SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 60, horizontal: 20),
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
                              const SizedBox(height: 15),
                              TextFormField(
                                decoration: textInputDecoration.copyWith(
                                    labelText: 'Name',
                                    prefix: Icon(Icons.person,
                                        color: Theme.of(context).primaryColor)),
                                onChanged: (val) {
                                  setState(() {
                                    name = val;
                                  });
                                },
                                validator: (val) {
                                  val!.isEmpty
                                      ? "Name Should not be empty"
                                      : null;
                                },
                              ),
                              const SizedBox(height: 15),
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
                                        color: Theme.of(context).primaryColor)),
                                onChanged: (val) {
                                  setState(() {
                                    password = val;
                                  });
                                },
                                validator: (val) {
                                  val!.length < 6
                                      ? "Password must be atleast 6 characters long"
                                      : null;
                                },
                              ),
                              const SizedBox(height: 15),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary:
                                              Theme.of(context).primaryColor,
                                          elevation: 0,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20))),
                                      onPressed: () {
                                        register();
                                      },
                                      child: const Text(
                                        'Sign Up',
                                        style: TextStyle(fontSize: 16),
                                      )),
                                ),
                              ),
                              Text.rich(TextSpan(
                                  text: "Already an user?",
                                  style: const TextStyle(
                                      color: Colors.black, fontSize: 14),
                                  children: [
                                    TextSpan(
                                        text: 'Sign In Now',
                                        style: const TextStyle(
                                            color: Color(0xFF15AC51),
                                            decoration:
                                                TextDecoration.underline),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            nextScreenReplace(
                                                context, const LoginScreen());
                                          })
                                  ]))
                            ]))),
              ));
  }

  register() {
    nextScreenReplace(
        context,
        BottomBar(
          title: 'Kuppai',
        ));
  }
}
