import 'package:edumate_mobile/common/bloc/auth/auth_state.dart';
import 'package:edumate_mobile/common/bloc/auth/auth_state_cubit.dart';
import 'package:edumate_mobile/core/config/theme/app_theme.dart';
import 'package:edumate_mobile/presentation/auth/main_navigation.dart';
import 'package:edumate_mobile/presentation/auth/signin.dart';
import 'package:edumate_mobile/presentation/auth/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'service_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: Colors.black,
    ),
  );
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom],
    );
    return BlocProvider(
      create: (context) => AuthStateCubit()..appStarted(),
      child: MaterialApp(
        theme: AppTheme.appTheme,
        debugShowCheckedModeBanner: false,
        routes: {
          "/signin": (context) => SigninPage(),
          "/signup": (context) => SignupPage(),
          "/books": (context) => MainNavigationPage(),
        },
        home: BlocBuilder<AuthStateCubit, AuthState>(
          builder: (context, state) {
            if (state is Authenticated) {
              return const MainNavigationPage();
            }
            if (state is UnAuthenticated) {
              return SignupPage();
            }
            return Container();
          },
        ),
      ),
    );
  }
}
