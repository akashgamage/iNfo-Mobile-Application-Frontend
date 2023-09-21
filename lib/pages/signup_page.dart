import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:info_mobile_application/firebase_auth_implementation/firebase_auth_services.dart';

import 'login_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formkey = GlobalKey<FormState>();

  final FirebaseAuthServices _auth = FirebaseAuthServices();

  // Editing Controller
  final usernameEditingController = TextEditingController();
  final emailEditingController = TextEditingController();
  final passwordEditingController = TextEditingController();

  bool passwordObscured = true;

  @override
  void dispose() {
    usernameEditingController.dispose();
    emailEditingController.dispose();
    passwordEditingController.dispose();
    super.dispose();
  }

  // Function to handle the signup
  void _handleSignUp() {
    if (_formkey.currentState!.validate()) {
      // Simulate successful sign-up
      String username = usernameEditingController.text;
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Sign Up Successful"),
            content: Text(
                "Congratulations, $username! Your account has been created."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: const Text("OK"),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    // User Name field
    final usernameField = TextFormField(
      autofocus: false,
      controller: usernameEditingController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your username';
        }
        return null;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        labelText: "User Name",
        hintText: 'admin',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
    // Email Address field
    final emailField = TextFormField(
      autofocus: false,
      controller: emailEditingController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your email address';
        }
        return null;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
        labelText: "Email Address",
        hintText: 'hello@example.com',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );

    // Password field
    final passwordField = TextFormField(
      autofocus: false,
      controller: passwordEditingController,
      obscureText: passwordObscured,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your password';
        }
        return null;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        labelText: "Password",
        hintText: '••••••••••••••',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                passwordObscured = !passwordObscured;
              });
            },
            icon: Icon(
                passwordObscured ? Icons.visibility_off : Icons.visibility)),
      ),
    );

    // Sign Up Button
    double displayWidth = MediaQuery.of(context).size.width;
    final signupButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12),
      color: const Color.fromARGB(255, 7, 57, 97),
      child: MaterialButton(
        padding: EdgeInsets.symmetric(
          horizontal: displayWidth * .05,
          vertical: displayWidth * .04,
        ),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: _signup,
        child: const Text(
          "Sign Up",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Inter',
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/SignUp.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.transparent,
              padding: const EdgeInsets.all(25.0),
              child: Form(
                key: _formkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      width: 400,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0xFF191919),
                          fontSize: 40,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 2,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 400,
                      height: 40,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'Welcome to the ',
                              style: TextStyle(
                                color: Color(0xFF555555),
                                fontSize: 24,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 2,
                              ),
                            ),
                            TextSpan(
                              text: ' iNfo',
                              style: TextStyle(
                                color: Color(0xFF555555),
                                fontSize: 24,
                                fontStyle: FontStyle.italic,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                                height: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    usernameField,
                    const SizedBox(height: 40),
                    emailField,
                    const SizedBox(height: 40),
                    passwordField,
                    const SizedBox(height: 40),
                    signupButton,
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account?"),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()),
                            );
                          },
                          child: const Text(
                            " Log In",
                            style: TextStyle(
                              color: Color.fromARGB(255, 7, 57, 97),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _signup() async {
    String username = usernameEditingController.text;
    String email = emailEditingController.text;
    String password = passwordEditingController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    if (user != null) {
      _handleSignUp();
    }
  }
}
