// import 'package:flutter/material.dart';
// // import 'package:loginpage/pages/login_page.dart';


// class SignUp extends StatefulWidget {
//   const SignUp({Key? key}) : super(key: key);

//   @override
//   State<SignUp> createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
//   final _formkey = GlobalKey<FormState>();
//   // Editing Controller
//   final usernameEditingController = TextEditingController();
//   final emailEditingController = TextEditingController();
//   final passwordEditingController = TextEditingController();

//   bool passwordObscured = true;

//   // Function to handle the signup
//   void _handleSignUp() {
//     if (_formkey.currentState!.validate()) {
//       // successful sign-up pop up message
//       String username = usernameEditingController.text;
//       showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: const Text("Sign Up Successful"),
//             content: Text(
//                 "Congratulations, $username! Your account has been created."),
//             actions: [
//               TextButton(
//                 onPressed: () {
//                   Navigator.of(context).pop(); // Close the dialog
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => const LoginPage()),
//                   );
//                 },
//                 child: const Text("OK"),
//               ),
//             ],
//           );
//         },
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     // User Name field
//     final usernameField = TextFormField(
//       autofocus: false,
//       controller: usernameEditingController,
//       keyboardType: TextInputType.emailAddress,
//       validator: (value) {
//         if (value == null || value.isEmpty) {
//           return 'Please enter your username';
//         }
//         return null;
//       },
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
//         labelText: "User Name",
//         hintText: 'admin',
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//       ),
//     );
//     // Email Address field
//     final emailField = TextFormField(
//       autofocus: false,
//       controller: emailEditingController,
//       keyboardType: TextInputType.emailAddress,
//       validator: (value) {
//         if (value == null || value.isEmpty) {
//           return 'Please enter your email address';
//         }
//         return null;
//       },
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
//         labelText: "Email Address",
//         hintText: 'hello@example.com',
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//       ),
//     );

//     // Password field
//     final passwordField = TextFormField(
//       autofocus: false,
//       controller: passwordEditingController,
//       obscureText: passwordObscured,
//       validator: (value) {
//         if (value == null || value.isEmpty) {
//           return 'Please enter your password';
//         }
//         return null;
//       },
//       textInputAction: TextInputAction.done,
//       decoration: InputDecoration(
//         contentPadding:
//             const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//         labelText: "Password",
//         hintText: '●●●●●●●●●●●●●●',
//         border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
//         suffixIcon: IconButton(
//             onPressed: () {
//               setState(() {
//                 passwordObscured = !passwordObscured;
//               });
//             },
//             icon: Icon(
//                 passwordObscured ? Icons.visibility_off : Icons.visibility)),
//       ),
//     );

//     // Sign Up Button
//     final signupButton = Material(
//       elevation: 5,
//       borderRadius: BorderRadius.circular(12),
//       color: const Color.fromARGB(255, 35, 104, 253),
//       child: MaterialButton(
//         padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
//         minWidth: MediaQuery.of(context).size.width,
//         onPressed: _handleSignUp,
//         child: const Text(
//           "Sign Up",
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             fontSize: 16,
//             fontFamily: 'Inter',
//             color: Colors.white,
//             fontWeight: FontWeight.w900,
//           ),
//         ),
//       ),
//     );

//     return Container(
//       decoration: const BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage('assets/images/SignUp.png'),
//           fit: BoxFit.cover,
//         ),
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         body: Center(
//           child: SingleChildScrollView(
//             child: Container(
//               color: Colors.transparent,
//               padding: const EdgeInsets.all(25.0),
//               child: Form(
//                 key: _formkey,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     const SizedBox(
//                       width: 312,
//                       child: Text(
//                         'Sign Up',
//                         style: TextStyle(
//                           color: Color(0xFF191919),
//                           fontSize: 28,
//                           fontFamily: 'Inter',
//                           fontWeight: FontWeight.w600,
//                           height: 2,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 312,
//                       child: Text.rich(
//                         TextSpan(
//                           children: [
//                             TextSpan(
//                               text: 'Welcome to the ',
//                               style: TextStyle(
//                                 color: Color(0xFF555555),
//                                 fontSize: 18,
//                                 fontFamily: 'Inter',
//                                 fontWeight: FontWeight.w400,
//                                 height: 2,
//                               ),
//                             ),
//                             TextSpan(
//                               text: 'iNfo',
//                               style: TextStyle(
//                                 color: Color(0xFF555555),
//                                 fontSize: 18,
//                                 fontStyle: FontStyle.italic,
//                                 fontFamily: 'Inter',
//                                 fontWeight: FontWeight.w700,
//                                 height: 2,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 45),
//                     usernameField,
//                     const SizedBox(height: 40),
//                     emailField,
//                     const SizedBox(height: 40),
//                     passwordField,
//                     const SizedBox(height: 40),
//                     signupButton,
//                     const SizedBox(height: 30),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const LoginPage()),
//                         );
//                       },
//                       child: const Text(
//                         "Log In",
//                         style: TextStyle(
//                           color: Color(0xFF007AFF),
//                           fontFamily: 'Inter',
//                           fontWeight: FontWeight.w500,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
