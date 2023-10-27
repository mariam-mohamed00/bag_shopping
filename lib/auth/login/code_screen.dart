import 'package:flutter/material.dart';

import '../../my_theme.dart';

class CodeScreen extends StatelessWidget {
  static const String routeName = 'code ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 120,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: MyTheme.blackColor,
                ),
                label: Text(
                  'Back',
                  style: Theme.of(context).textTheme.titleMedium,
                )),
          ],
        ),
        title: Image.asset('assets/images/logo.png'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.09,
            ),
            Text(
              'Your Code',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                'Code send to your Email',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 79,
                        height: 79,
                        decoration: BoxDecoration(
                            color: MyTheme.greyColorBackGround,
                            borderRadius: BorderRadius.circular(12)

                            // borderRadius:  BorderRadius.circular(12)
                            ),
                      ),
                      Container(
                        width: 79,
                        height: 79,
                        decoration: BoxDecoration(
                            color: MyTheme.greyColorBackGround,
                            borderRadius: BorderRadius.circular(12)

                            // borderRadius:  BorderRadius.circular(12)
                            ),
                      ),
                      Container(
                        width: 79,
                        height: 79,
                        decoration: BoxDecoration(
                            color: MyTheme.greyColorBackGround,
                            borderRadius: BorderRadius.circular(12)

                            // borderRadius:  BorderRadius.circular(12)
                            ),
                      ),
                      Container(
                        width: 79,
                        height: 79,
                        decoration: BoxDecoration(
                            color: MyTheme.greyColorBackGround,
                            borderRadius: BorderRadius.circular(12)

                            // borderRadius:  BorderRadius.circular(12)
                            ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('(2:10)'),
                      Text(
                        'Resend Code? ',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Text('Click here',
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(
                                  color: MyTheme.primaryColor,
                                  decoration: TextDecoration.underline)),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.27,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      check();
                    },
                    child: Text('Verify',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void check() async {
    // if (formKey.currentState!.validate() == true) {}}
  }
}
