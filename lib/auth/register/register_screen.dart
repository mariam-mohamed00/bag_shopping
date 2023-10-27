import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import '../../my_theme.dart';
import 'custom_text_form_field.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = 'register';
  bool isChecked = false;

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var formKey = GlobalKey<FormState>();

  var nameController = TextEditingController();

  var emailController = TextEditingController();

  var passwordController = TextEditingController();
  AutovalidateMode? autovalidateMode = AutovalidateMode.disabled;
  bool isPasswordShow = true;
  String _errorMessage = '';

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
                      onPressed: () {},
                      child: Text('SIGN IN',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(fontSize: 14))),
                  TextButton(
                      onPressed: () {},
                      child: Text('SIGN UP',
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
                'SIGN UP',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Form(
                key: formKey,
                autovalidateMode: autovalidateMode,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text('Full Name',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(fontSize: 15)),
                    ),
                    CustomTextFormField(
                      onChanged: (value) {},
                      hint: 'Ali mohamed',
                      keyboardType: TextInputType.text,
                      controller: nameController,
                      validator: (text) {
                        if (text == null || text.trim().isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
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
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Please enter your email address';
                        }
                        bool emailValid = RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value);
                        if (!emailValid) {
                          return "Please enter a valid email";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        validateEmail(value!);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text('Password',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(fontSize: 15)),
                    ),
                    CustomTextFormField(
                      onChanged: (value) {},
                      isPassword: true,
                      hint: 'Min 8 Cyfr',
                      keyboardType: TextInputType.number,
                      controller: passwordController,
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
                    Row(
                      children: [
                        Transform.scale(
                          scale: 1.4, //
                          child: Checkbox(
                            value: widget.isChecked,
                            activeColor: Colors.green,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                                side: BorderSide(
                                    width: 1,
                                    color: MyTheme.primaryColor,
                                    style: BorderStyle.none)),
                            onChanged: (bool? newValue) {
                              setState(() {
                                widget.isChecked = newValue!;
                              });
                            },
                          ),
                        ),
                        Text('I agree with Terms and ',
                            style: Theme.of(context).textTheme.titleSmall),
                        Text('Privacy Policy',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                color: MyTheme.primaryColor,
                                decoration: TextDecoration.underline)),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.12,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        register();
                      },
                      child: Text('Sign Up',
                          // AppLocalizations.of(context)!.login,
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
                          'Already have account?',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Sign In',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                color: MyTheme.primaryColor,
                                decoration: TextDecoration.underline,
                              ),
                            ))
                      ],
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

  void validateEmail(String val) {
    if (!EmailValidator.validate(val, true) && val.isNotEmpty) {
      setState(() {
        _errorMessage = "Invalid Email Address";
      });
    } else {
      setState(() {
        _errorMessage = "";
      });
    }
  }

  void register() async {
    if (formKey.currentState!.validate() == true) {
      //   // todo: show loading
      //   DialogUtils.showLoading(context, AppLocalizations.of(context)!.loading);
      //   // await Future.delayed(Duration(seconds: 2));
      //   try {
      //     final credential = await FirebaseAuth.instance
      //         .createUserWithEmailAndPassword(
      //         email: emailController.text, password: passwordController.text);
      //
      //     MyUser myUser = MyUser(
      //         id: credential.user?.uid ?? '',
      //         name: nameController.text,
      //         email: emailController.text);
      //     var authProvider = Provider.of<AuthProvider>(context, listen: false);
      //     authProvider.updateUser(myUser);
      //     await FirebaseUtils.addUserToFireStore(myUser);
      //     // todo: hide loading
      //     // todo: show message
      //     DialogUtils.hideLoading(context);
      //     DialogUtils.showMessage(
      //         context, AppLocalizations.of(context)!.register_message_success,
      //         title: AppLocalizations.of(context)!.success_title,
      //         posActionName: AppLocalizations.of(context)!.ok,
      //         barrierDismissible: false, posAction: () {
      //       Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      //     });
      //   } on FirebaseAuthException catch (e) {
      //     if (e.code == 'weak-password') {
      //       // todo: hide loading
      //       // todo: show message
      //       DialogUtils.hideLoading(context);
      //       DialogUtils.showMessage(context, 'The password provided is too weak',
      //           title: AppLocalizations.of(context)!.error_title,
      //           posActionName: AppLocalizations.of(context)!.ok);
      //
      //       print('The password provided is too weak.');
      //     } else if (e.code == 'email-already-in-use') {
      //       // todo: hide loading
      //       // todo: show message
      //       DialogUtils.hideLoading(context);
      //       DialogUtils.showMessage(context,
      //           AppLocalizations.of(context)!.register_message_email_exist,
      //           title: AppLocalizations.of(context)!.error_title,
      //           posActionName: AppLocalizations.of(context)!.ok,
      //           barrierDismissible: false);
      //     }
      //   } catch (e) {
      //     // todo: hide loading
      //     // todo: show message
      //     DialogUtils.hideLoading(context);
      //     DialogUtils.showMessage(context, e.toString(),
      //         title: AppLocalizations.of(context)!.error_title,
      //         posActionName: AppLocalizations.of(context)!.ok);
      //
      //     print(e);
      //   }
    } else {
      autovalidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}
