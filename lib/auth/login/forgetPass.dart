// import 'package:flutter/material.dart';
// import 'package:online_shopping/auth/login/code_screen.dart';
//
// import '../../my_theme.dart';
// import '../register/custom_text_form_field.dart';
//
// class ForgetPassword extends StatelessWidget {
//   static const String routeName = 'forget ';
//
//   var formKey = GlobalKey<FormState>();
//
//   var emailController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Image.asset('assets/images/logo.png'),
//         leadingWidth: 120,
//         leading: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             TextButton.icon(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 icon: Icon(
//                   Icons.arrow_back_ios_new,
//                   color: MyTheme.blackColor,
//                 ),
//                 label: Text(
//                   'Back',
//                   style: Theme.of(context).textTheme.titleMedium,
//                 )),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(
//               height: MediaQuery.of(context).size.height * 0.09,
//             ),
//             Text(
//               'Enter Your Email',
//               style: Theme.of(context).textTheme.titleLarge,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Form(
//                 key: formKey,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 16.0, top: 40),
//                       child: Text('Email',
//                           style: Theme.of(context)
//                               .textTheme
//                               .titleSmall!
//                               .copyWith(fontSize: 15)),
//                     ),
//                     CustomTextFormField(
//                       hint: 'Patient@self.com',
//                       keyboardType: TextInputType.emailAddress,
//                       controller: emailController,
//                       // viewModel.emailController,
//                       validator: (text) {
//                         if (text == null || text.trim().isEmpty) {
//                           return 'Please enter your email address';
//                         }
//                         bool emailValid = RegExp(
//                                 r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
//                             .hasMatch(text);
//                         if (!emailValid) {
//                           return "Please enter a valid email";
//                         }
//                         return null;
//                       },
//                     ),
//                     TextButton(
//                         onPressed: () {
//                           Navigator.pop(context);
//                         },
//                         child: Text(
//                           'Back to sign in',
//                           style: Theme.of(context).textTheme.titleSmall,
//                         )),
//                     Divider(
//                       color: MyTheme.greyColor,
//                       height: 25,
//                       thickness: 2,
//                       indent: 130,
//                       endIndent: 130,
//                     ),
//                     SizedBox(
//                       height: MediaQuery.of(context).size.height * 0.27,
//                     ),
//                     ElevatedButton(
//                       onPressed: () {
//                         check(context);
//                       },
//                       child: Text('Send',
//                           style: Theme.of(context)
//                               .textTheme
//                               .titleMedium!
//                               .copyWith(color: MyTheme.whiteColor)),
//                       style: ElevatedButton.styleFrom(
//                           padding: EdgeInsets.symmetric(vertical: 20),
//                           backgroundColor: MyTheme.primaryColor,
//                           shape: StadiumBorder(
//                               side: BorderSide(color: MyTheme.primaryColor))),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           'Already have account?',
//                           style: Theme.of(context).textTheme.titleSmall,
//                         ),
//                         TextButton(
//                             onPressed: () {
//                               Navigator.pop(context);
//                             },
//                             child: Text(
//                               'Sign In',
//                               style: Theme.of(context)
//                                   .textTheme
//                                   .titleSmall!
//                                   .copyWith(
//                                     color: MyTheme.primaryColor,
//                                     decoration: TextDecoration.underline,
//                                   ),
//                             ))
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   void check(BuildContext context) async {
//     if (formKey.currentState!.validate() == true) {
//       Navigator.of(context).pushNamed(CodeScreen.routeName);
//     }
//   }
// }
