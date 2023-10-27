// // import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// import 'login_navigator.dart';
// // import 'package:todo/auth/login/login_navigator.dart';
// // import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// // import 'package:todo/home/home_screen.dart';
//
// class LoginScreenViewModel extends ChangeNotifier {
// // todo : hold data - handle logic
//
//   var emailController = TextEditingController(text: 'mariam99@gmail.com');
//   var passwordController = TextEditingController(text: '123456');
//   var formKey = GlobalKey<FormState>();
//
//   late LoginNavigator navigator;
//
//   void login(BuildContext context) async {
//     if (formKey.currentState!.validate() == true) {
//       navigator.showMyLoading();
//
//       try {
//         // final credential = await FirebaseAuth.instance
//         //     .signInWithEmailAndPassword(
//                 email: emailController.text;
//                 password: passwordController.text;
//
//         // todo: hide loading
//         navigator.HideMyLoading();
//
//         // todo: show message
//         navigator.showMyMessage(
//             context, 'success',
//             // AppLocalizations.of(context)!.login_message_success,
//             posActionName: 'ok', posAction: () {
//           Navigator.pushReplacementNamed(context, HomeScreen.routeName);
//         }, title: 'Success', barrierDismissible: false);
//         // navigator.goToHome(HomeScreen.routeName);
//       }
//       on FirebaseAuthException catch (e) {
//         if (e.code == 'INVALID_LOGIN_CREDENTIALS') {
//           // todo: hide loading
//           navigator.HideMyLoading();
//
//           // todo : show message
//           navigator.showMyMessage(
//               context, AppLocalizations.of(context)!.login_message_error,
//               posActionName: 'ok', title: 'Error', barrierDismissible: false);
//         }
//       } catch (e) {
//         // todo: hide loading
//         navigator.HideMyLoading();
//
//         // todo : show messageAA
//         navigator.showMyMessage(context, e.toString(),
//             posActionName: 'ok', title: 'Error', barrierDismissible: false);
//       }
//     }
//   }
// }
