import 'package:edumate_mobile/core/network/dio_client.dart';
import 'package:edumate_mobile/data/repository/auth.dart';
import 'package:edumate_mobile/data/source/auth_api_service.dart';
import 'package:edumate_mobile/data/source/auth_local_service.dart';
import 'package:edumate_mobile/domain/repository/auth.dart';
import 'package:edumate_mobile/domain/usecases/get_user.dart';
import 'package:edumate_mobile/domain/usecases/is_logged_in.dart';
import 'package:edumate_mobile/domain/usecases/logout.dart';
import 'package:edumate_mobile/domain/usecases/signin.dart';
import 'package:edumate_mobile/domain/usecases/signup.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerSingleton<DioClient>(DioClient());

  // Services
  sl.registerSingleton<AuthApiService>(AuthApiServiceImpl());

  sl.registerSingleton<AuthLocalService>(AuthLocalServiceImpl());

  // Repositories
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());

  // Usecases
  sl.registerSingleton<SignupUseCase>(SignupUseCase());

  sl.registerSingleton<IsLoggedInUseCase>(IsLoggedInUseCase());

  sl.registerSingleton<GetUserUseCase>(GetUserUseCase());

  sl.registerSingleton<LogoutUseCase>(LogoutUseCase());

  sl.registerSingleton<SigninUseCase>(SigninUseCase());
}
