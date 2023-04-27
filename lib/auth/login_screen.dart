// import 'package:flutter/material.dart';
// import 'package:flutter_login/flutter_login.dart';
// import 'package:objectbox/objectbox.dart';

// import '../homepage.dart';
// import '../models/user.dart';

// class LoginScreen extends StatelessWidget {
//   final _store = Store(getObjectBoxModel());

//   Duration get loginTime => const Duration(milliseconds: 2250);

//   Future<String?> _authUser(LoginData data) async {
//     debugPrint('Name: ${data.name}, Password: ${data.password}');
//     final query = _store.box<User>().query(User_.email.equals(data.name)).build();
//     final users = await query.find();
//     if (users.isEmpty) {
//       return 'User not exists';
//     }
//     final user = users.first;
//     if (user.password != data.password) {
//       return 'Password does not match';
//     }
//     return null;
//   }

//   Future<String?> _signupUser(SignupData data) async {
//     debugPrint('Signup Name: ${data.name}, Password: ${data.password}');
//     final user = User(email: data.name, password: data.password);
//     await _store.box<User>().put(user);
//     return null;
//   }

//   Future<String> _recoverPassword(String name) {
//     debugPrint('Name: $name');
//     return Future.delayed(loginTime).then((_) {
//       return 'Tupo kwenye matengenezo';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FlutterLogin(
//         title: 'KABIG',
//         logo: const AssetImage('assets/images/minion.jpg'),
//         onLogin: _authUser,
//         onSignup: _signupUser,
//         onSubmitAnimationCompleted: () {
//           Navigator.of(context).pushReplacement(MaterialPageRoute(
//             builder: (context) => const HomePage(),
//           ));
//         },
//         onRecoverPassword: _recoverPassword,
//         theme: LoginTheme(
//           // primaryColor: const Color(0xFF004B23),
//           accentColor: const Color(0xFF008000),
//           errorColor: Colors.deepOrange,
//           titleStyle: const TextStyle(
//             color: Colors.white,
//             // fontFamily: 'Quicksand',
//             letterSpacing: 4,
//           ),
//         ));
//   }
// }
