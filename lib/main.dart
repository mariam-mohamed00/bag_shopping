import 'package:flutter/material.dart';

import 'auth/login/code_screen.dart';
import 'auth/login/login_screen.dart';
import 'auth/register/register_screen.dart';
import 'my_theme.dart';

void main() {
  runApp(
      // MultiProvider(providers: [
      //   ChangeNotifierProvider<AppConfigProvider>(
      //       create: (_) => AppConfigProvider()),
      //   ChangeNotifierProvider<ListProvider>(create: (_) => ListProvider()),
      //   ChangeNotifierProvider<AuthProvider>(create: (_) => AuthProvider())
      // ],
      //     child:
      MyApp()
      // ),
      );
}

class MyApp extends StatelessWidget {
  // late AppConfigProvider provider;

  @override
  Widget build(BuildContext context) {
    // initSharedPref();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        RegisterScreen.routeName: (context) => RegisterScreen(),
        // ForgetPassword.routeName: (context) => ForgetPassword(),
        CodeScreen.routeName: (context) => CodeScreen(),
      },
      theme: MyTheme.lightTheme,
      // locale: Locale(provider.appLanguage),
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      // supportedLocales: AppLocalizations.supportedLocales,
    );
  }

// Future<void> initSharedPref() async {
//   final prefs = await SharedPreferences.getInstance();
//   var language = prefs.getString('language');
//   if (language != null) {
//     provider.changeLanguage(language);
//   }
//
//   var isDark = prefs.getBool('isDark');
//   if (isDark == true) {
//     provider.changeTheme(ThemeMode.dark);
//   } else if (isDark == false) {
//     provider.changeTheme(ThemeMode.light);
//   }
// }
}
