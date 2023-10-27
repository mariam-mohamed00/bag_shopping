// import 'package:flutter/material.dart';
//
// class Register extends StatefulWidget {
//   static const String routeName = 'login';
//
//   @override
//   State<Register> createState() => _RegisterState();
// }
//
// class _RegisterState extends State<Register> {
//   // implements LoginNavigator {
//   // LoginScreenViewModel viewModel = LoginScreenViewModel();
//   var emailController = TextEditingController();
//   var passwordController = TextEditingController();
//   var formKey = GlobalKey<FormState>();
//
//   // bool selected = true;
//
//
//   @override
//   Widget build(BuildContext context) {
//
//     return
//         // ChangeNotifierProvider(
//         // create: (context) => viewModel,
//         // child:
//         Scaffold(
//       appBar: AppBar(
//         title: Image.asset('assets/images/logo.png'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0),
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Text('register')
//               // Row(
//               //   mainAxisAlignment: MainAxisAlignment.center,
//               //   children: [
//               //     TextButton(
//               //         onPressed: () {
//               //           // Navigator.of(context).pushNamed(Login.routeName);
//               //           // Navigator.pushNamed(context, Login.routeName);
//               //           Navigator.pushReplacementNamed(context, Login.routeName);
//               //         },
//               //         child: Text('SIGN IN',
//               //             // AppLocalizations.of(context)!.signup,
//               //             style: Theme.of(context)
//               //                 .textTheme
//               //                 .titleMedium!
//               //                 .copyWith(fontSize: 14))),
//               //     TextButton(
//               //         onPressed: () {
//               //           Navigator.of(context).pushNamed(Login.routeName);
//               //         },
//               //         child: Text('SIGN UP',
//               //             // AppLocalizations.of(context)!.signup,
//               //             style: Theme.of(context)
//               //                 .textTheme
//               //                 .titleMedium!
//               //                 .copyWith(fontSize: 14)))
//               //   ],
//               // ),
//               // SizedBox(
//               //   height: MediaQuery.of(context).size.height * 0.03,
//               // ),
//               //
//               // Text(
//               //   'SIGN UP',
//               //   style: Theme.of(context).textTheme.titleLarge,
//               // ),
//               //
//               // ///
//               // ///
//               // SizedBox(
//               //   height: MediaQuery.of(context).size.height * 0.05,
//               // ),
//               // Form(
//               //   key: formKey,
//               //   // viewModel.formKey,
//               //   child: SingleChildScrollView(
//               //     child: Column(
//               //       crossAxisAlignment: CrossAxisAlignment.stretch,
//               //       children: [
//               //         Padding(
//               //           padding: const EdgeInsets.only(left: 16.0),
//               //           child: Text('Full Name',
//               //               style: Theme.of(context)
//               //                   .textTheme
//               //                   .titleSmall!
//               //                   .copyWith(fontSize: 15)),
//               //         ),
//               //         CustomTextFormField(
//               //           hint: 'Ali mohamed',
//               //           // AppLocalizations.of(context)!.email_address,
//               //           keyboardType: TextInputType.emailAddress,
//               //           controller: emailController,
//               //           // viewModel.emailController,
//               //           validator: (text) {
//               //             if (text == null || text.trim().isEmpty) {
//               //               return 'Please enter your email address';
//               //               // AppLocalizations.of(context)!.validate_email;
//               //             }
//               //             bool emailValid = RegExp(
//               //                     r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//               //                 .hasMatch(text);
//               //             if (!emailValid) {
//               //               return "Please enter a valid email";
//               //               // AppLocalizations.of(context)!.valid_email;
//               //             }
//               //
//               //             return null;
//               //           },
//               //         ),
//               //
//               //         Padding(
//               //           padding: const EdgeInsets.only(left: 16.0),
//               //           child: Text('Email',
//               //               style: Theme.of(context)
//               //                   .textTheme
//               //                   .titleSmall!
//               //                   .copyWith(fontSize: 15)),
//               //         ),
//               //         CustomTextFormField(
//               //           hint: 'Patient@self.com',
//               //           // AppLocalizations.of(context)!.email_address,
//               //           keyboardType: TextInputType.emailAddress,
//               //           controller: emailController,
//               //           // viewModel.emailController,
//               //           validator: (text) {
//               //             if (text == null || text.trim().isEmpty) {
//               //               return 'Please enter your email address';
//               //               // AppLocalizations.of(context)!.validate_email;
//               //             }
//               //             bool emailValid = RegExp(
//               //                     r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//               //                 .hasMatch(text);
//               //             if (!emailValid) {
//               //               return "Please enter a valid email";
//               //               // AppLocalizations.of(context)!.valid_email;
//               //             }
//               //
//               //             return null;
//               //           },
//               //         ),
//               //
//               //         Padding(
//               //           padding: const EdgeInsets.only(left: 16.0),
//               //           child: Text('Password',
//               //               style: Theme.of(context)
//               //                   .textTheme
//               //                   .titleSmall!
//               //                   .copyWith(fontSize: 15)),
//               //         ),
//               //         CustomTextFormField(
//               //           hint:
//               //               'Min 8 Cyfr', // AppLocalizations.of(context)!.password,
//               //           // suffixIcon: IconButton(
//               //           //   icon: ImageIcon(
//               //           //       color: MyTheme.greyColor,
//               //           //       CustomTextFormField.isPassword
//               //           //           ? AssetImage(
//               //           //           'assets/images/icon_eye_closed.png')
//               //           //           : AssetImage(
//               //           //           'assets/images/icon_eye_open.png')),
//               //           //   onPressed: () {
//               //           //     setState(
//               //           //           () {
//               //           //         CustomTextFormField.isPassword =
//               //           //         !CustomTextFormField.isPassword;
//               //           //       },
//               //           //     );
//               //           //   },
//               //           // ),
//               //           keyboardType: TextInputType.number,
//               //           controller: passwordController,
//               //           // viewModel.passwordController,
//               //           validator: (text) {
//               //             if (text == null || text.trim().isEmpty) {
//               //               return 'Please enter your password';
//               //               // AppLocalizations.of(context)!
//               //               //   .validate_password;
//               //             }
//               //             if (text.length < 8) {
//               //               return 'Password 8 chars at least';
//               //               // AppLocalizations.of(context)!.valid_password;
//               //             }
//               //             return null;
//               //           },
//               //         ),
//               //
//               //         Row(
//               //           children: [
//               //             Transform.scale(
//               //               scale: 1.4, //
//               //               child: Checkbox(
//               //                 value: widget.isChecked,
//               //                 activeColor: Colors.green,
//               //                 shape: RoundedRectangleBorder(
//               //                     borderRadius: BorderRadius.circular(4),
//               //                   side: BorderSide(
//               //                     width: 1,
//               //                     color: MyTheme.primaryColor,
//               //                     style: BorderStyle.none
//               //                   )
//               //                 ),
//               //
//               //                 onChanged: (bool? newValue) {
//               //                   setState(() {
//               //                     widget.isChecked = newValue!;
//               //                   });
//               //                 },
//               //                 // checkColor: MyTheme.primaryColor,
//               //
//               //               ),
//               //             ),
//               //             Text('I agree with Terms and ',
//               //                 style: Theme.of(context).textTheme.titleSmall),
//               //             Text('Privacy Policy',
//               //                 style: Theme.of(context)
//               //                     .textTheme
//               //                     .titleSmall!
//               //                     .copyWith(
//               //                         color: MyTheme.primaryColor,
//               //                         decoration: TextDecoration.underline)),
//               //           ],
//               //         ),
//               //
//               //         SizedBox(
//               //           height: MediaQuery.of(context).size.height * 0.14,
//               //         ),
//               //
//               //         ElevatedButton(
//               //           onPressed: () {
//               //             // Navigator.pushReplacementNamed(context, RegisterScreen.routeName);
//               //             // viewModel.login(context);
//               //           },
//               //           child: Text('Sign in',
//               //               // AppLocalizations.of(context)!.login,
//               //               style: Theme.of(context)
//               //                   .textTheme
//               //                   .titleMedium!
//               //                   .copyWith(color: MyTheme.whiteColor)),
//               //           style: ElevatedButton.styleFrom(
//               //               padding: EdgeInsets.symmetric(vertical: 20),
//               //               backgroundColor: MyTheme.primaryColor,
//               //               shape: StadiumBorder(
//               //                   side: BorderSide(color: MyTheme.primaryColor))),
//               //         ),
//               //         Row(
//               //           mainAxisAlignment: MainAxisAlignment.center,
//               //           children: [
//               //             Text(
//               //               'Don’t have an account?',
//               //               // AppLocalizations.of(context)!.do_not_have_an_account,
//               //               style: Theme.of(context).textTheme.titleSmall,
//               //             ),
//               //             TextButton(
//               //                 onPressed: () {
//               //                   // Navigator.of(context)
//               //                   // .pushNamed(RegisterScreen.routeName);
//               //                 },
//               //                 child: Text(
//               //                   'Sign Up',
//               //                   // AppLocalizations.of(context)!.signup,
//               //                   style: Theme.of(context)
//               //                       .textTheme
//               //                       .titleSmall!
//               //                       .copyWith(
//               //                         color: MyTheme.primaryColor,
//               //                         decoration: TextDecoration.underline,
//               //                       ),
//               //                 ))
//               //           ],
//               //         )
//                     ],
//                   ),
//                 ),
//               ),
//             // ],
//           // ),
//         // ),
//       // ),
//     );
//     // );
//   }
//
// // @override
// // void HideMyLoading() {
// //   // TODO: implement HideMyLoading
// //   DialogUtils.hideLoading(context);
// // }
// //
// // @override
// // void showMyLoading() {
// //   // TODO: implement showMyLoading
// //   DialogUtils.showLoading(context, 'Loading...');
// // }
// //
// // @override
// // void showMyMessage(BuildContext context, String message, {String title = 'Title', String? posActionName, VoidCallback? posAction, bool barrierDismissible = true}) {
// //   // TODO: implement showMyMessage
// //   List<Widget> actions = [];
// //   if (posActionName != null) {
// //     actions.add(TextButton(
// //         onPressed: () {
// //           Navigator.pop(context);
// //           posAction?.call();
// //         },
// //         child: Text(posActionName)));
// //   }
// //
// //   showDialog(
// //     barrierDismissible: barrierDismissible,
// //     context: context,
// //     builder: (context) {
// //       // var provider = Provider.of<AppConfigProvider>(context);
// //
// //       return AlertDialog(
// //         backgroundColor:  MyTheme.whiteColor,
// //         content: Text(message),
// //         title: Text(title,
// //             style: TextStyle(
// //                 color: MyTheme.blackColor)),
// //         actions: actions,
// //         titleTextStyle: TextStyle(color: MyTheme.blackColor),
// //       );
// //     },
// //   );
// //
// //
// //
// //
// //
// //   // DialogUtils.showMessage(
// //   //   context, message,
// //   //   barrierDismissible: false,
// //   //   posActionName: posActionName,
// //   // );
// //
// // }
// //
// }
