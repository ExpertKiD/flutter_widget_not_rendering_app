import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ukpa_prms_mobile_app/screens/Authentication/auth/sign_in_page.dart';
import '../../constants/routes_constant.dart';
import '../../core/injections/injections.dart';
import '../../features/auth/domain/usecases/is_user_logged_in.dart';

import '../../features/auth/presentation/bloc/user_login_status/user_login_status_bloc.dart';
import '../../services/shared_preference_service/app_access_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserLoginStatusBloc(
        isUserLoggedInUseCase: getIt<IsUserLoggedInUseCase>(),
      )..add(UserLoginStatusEvent.checkStatusTriggered()),
      child: BlocListener<UserLoginStatusBloc, UserLoginStatusState>(
        listener: (listenerContext, state) {
          state.maybeMap(
              statusFetched: (data) {
                final isUserLoggedIn = data.isUserLoggedIn;

                debugPrint('User Login Status: $isUserLoggedIn');

                /// If user is logged in, go to dashboard
                /// else go to login page

                Navigator.of(listenerContext)
                    .pushReplacementNamed(Routes.loginRoute);
              },
              orElse: () {});
        },
        child: Scaffold(
            body: Center(
          child: Text('Splash Screen'),
        )),
      ),
    );
  }
}
