import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '/view_model/auth_view_model/auth_view_model.dart';
import '/view_model/auth_view_model/login_success_view_model.dart';
import '/constants/theme_constant.dart';
import 'constants/routes_constant.dart';
import 'core/injections/injections.dart';

import 'services/shared_preference_service/access_token_service.dart';
import 'services/shared_preference_service/forgot_password_token_service.dart';

void main() async {
  // GetIt configuration

  // await SharedPreferences.getInstance();

  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AccessTokenServiceProvider()),
        ChangeNotifierProvider(create: (_) => AuthViewModel()),
        ChangeNotifierProvider(create: (_) => LoginSuccessViewModel()),
        ChangeNotifierProvider(create: (_) => ForgotPasswordTokenService()),
      ],
      child: MaterialApp(
        darkTheme: appThemeData(),
        theme: appThemeData(),
        themeMode: ThemeMode.light,
        initialRoute: Routes.splashRoute,
        onGenerateRoute: RouteGenerator.getRoute,
      ),
    );
  }
}
