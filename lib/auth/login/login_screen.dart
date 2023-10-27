import 'package:flutter/material.dart';

// import 'package:online_shopping/auth/login/forgetPass.dart';
// import 'package:online_shopping/auth/register/register_screen.dart';

import '../../my_theme.dart';
import '../register/custom_text_form_field.dart';
import '../register/register_screen.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo.png'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {
                        // Navigator.of(context).pushNamed(Register.routeName);
                      },
                      child: Text('SIGN UP',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontSize: 14))),
                  TextButton(
                      onPressed: () {
                        // Navigator.of(context).pushNamed(Register.routeName);
                      },
                      child: Text('SIGN UP',
                          // AppLocalizations.of(context)!.signup,
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontSize: 14)))
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text(
                'SIGN IN',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text('Email',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(fontSize: 15)),
                    ),
                    CustomTextFormField(
                      hint: 'Patient@self.com',
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      // viewModel.emailController,
                      validator: (text) {
                        if (text == null || text.trim().isEmpty) {
                          return 'Please enter your email address';
                        }
                        bool emailValid = RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(text);
                        if (!emailValid) {
                          return "Please enter a valid email";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text('Password',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(fontSize: 15)),
                    ),
                    CustomTextFormField(
                      isPassword: true,
                      hint: 'Min 8 Cyfr',
                      //   suffixIcon:  // (widget.isPassword)?
                      //   IconButton(
                      //     icon: ImageIcon(
                      //         color: MyTheme.greyColor,
                      //         // CustomTextFormField.isPassword==false ? AssetImage(
                      //         //     'assets/images/icon_eye_closed.png')
                      //         //     : AssetImage(
                      //         //     'assets/images/icon_eye_open.png')),
                      //     onPressed: () {
                      //
                      //
                      //       // CustomTextFormField.isPassword =
                      //       // !CustomTextFormField.isPassword;
                      //       setState(
                      //             () {
                      //
                      //         },
                      //       );
                      //     },
                      //   ),
                      keyboardType: TextInputType.number,
                      controller: passwordController,
                      // viewModel.passwordController,
                      validator: (text) {
                        if (text == null || text.trim().isEmpty) {
                          return 'Please enter your password';
                        }
                        if (text.length < 8) {
                          return 'Password 8 chars at least';
                        }
                        return null;
                      },
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.of(context)
                        // .pushNamed(ForgetPassword.routeName);
                      },
                      child: Text(
                        textAlign: TextAlign.right,
                        'Forgot your password?',
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall!
                            .copyWith(color: MyTheme.primaryColor),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.25,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        login();
                      },
                      child: Text('Sign in',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(color: MyTheme.whiteColor)),
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          backgroundColor: MyTheme.primaryColor,
                          shape: StadiumBorder(
                              side: BorderSide(color: MyTheme.primaryColor))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don’t have an account?',
                          // AppLocalizations.of(context)!.do_not_have_an_account,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(RegisterScreen.routeName);
                            },
                            child: Text(
                              'Sign Up',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    color: MyTheme.primaryColor,
                                    decoration: TextDecoration.underline,
                                  ),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void login() async {
    if (formKey.currentState!.validate() == true) {}
    //   DialogUtils.showLoading(context, 'AppLocalizations.of(context)!.loading');
    //   try {
    //     final credential = await FirebaseAuth.instance
    //         .signInWithEmailAndPassword(
    //         email: emailController.text, password: passwordController.text);
    //     var user = await FirebaseUtils.readUserFromFireStore(
    //         credential.user?.uid ?? '');
    //     if (user == null) {
    //       return;
    //     }
    //     var authProvider = Provider.of<AuthProvider>(context, listen: false);
    //     authProvider.updateUser(user);
    //     // todo: hide loading
    //     // todo: show message
    //     DialogUtils.hideLoading(context);
    //     DialogUtils.showMessage(
    //         context, AppLocalizations.of(context)!.login_message_success,
    //         title: AppLocalizations.of(context)!.success_title,
    //         posActionName: AppLocalizations.of(context)!.ok,
    //         barrierDismissible: false, posAction: () {
    //       Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    //     });
    //   } on FirebaseAuthException catch (e) {
    //     if (e.code == 'user-not-found') {
    //       print('No user found for that email.');
    //     } else if (e.code == 'wrong-password') {
    //       print('Wrong password provided for that user.');
    //     } else if (e.code == 'INVALID_LOGIN_CREDENTIALS') {
    //       // todo: hide loading
    //       // todo : show message
    //       DialogUtils.hideLoading(context);
    //       DialogUtils.showMessage(
    //           context, AppLocalizations.of(context)!.login_message_error,
    //           title: AppLocalizations.of(context)!.error_title,
    //           posActionName: AppLocalizations.of(context)!.ok,
    //           barrierDismissible: false);
    //     }
    //   } catch (e) {
    //     // todo: hide loading
    //     // todo : show messageAA
    //     DialogUtils.hideLoading(context);
    //     DialogUtils.showMessage(context, e.toString(),
    //         title: AppLocalizations.of(context)!.error_title,
    //         posActionName: AppLocalizations.of(context)!.ok,
    //         barrierDismissible: false);
    //
    //     print(e);
    //   }
    // }
  }
}
