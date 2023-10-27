import 'package:flutter/material.dart';

import '../../my_theme.dart';

class CustomTextFormField extends StatefulWidget {
  String hint;
  TextEditingController controller;
  TextInputType keyboardType;
  String? Function(String?)? validator;
  bool isPassword;
  Widget? suffixIcon;
  String? Function(String?)? onChanged;

  CustomTextFormField(
      {required this.hint,
      required this.keyboardType,
      required this.controller,
      required this.validator,
      required this.onChanged,
      this.suffixIcon,
      this.isPassword = false});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isShown = true;

  Widget build(BuildContext context) {
    // var provider = Provider.of<AppConfigProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextFormField(
        obscureText: !isShown,
        controller: widget.controller,
        validator: widget.validator,
        keyboardType: widget.keyboardType,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: ImageIcon(
                    isShown
                        ? AssetImage('assets/images/icon_eye_open.png')
                        : AssetImage('assets/images/icon_eye_closed.png'),
                  ),
                  onPressed: () {
                    setState(
                      () {
                        isShown = !isShown;
                      },
                    );
                  },
                )
              : null,
          fillColor: MyTheme.greyColorBackGround,
          filled: true,
          hintText: widget.hint,
          hintStyle: Theme.of(context)
              .textTheme
              .titleSmall!
              .copyWith(fontWeight: FontWeight.w400),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide: BorderSide(
                width: 1,
                color: MyTheme.greyColorBackGround,
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide: BorderSide(
                width: 2,
                color: MyTheme.primaryColor,
              )),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide: BorderSide(
                width: 2,
                color: MyTheme.primaryColor,
              )),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide: BorderSide(
                width: 2,
                color: MyTheme.primaryColor,
              )),
        ),
      ),
    );
  }
}
