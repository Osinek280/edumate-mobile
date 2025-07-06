import 'package:edumate_mobile/core/usecase/usecase.dart';
import 'package:edumate_mobile/domain/repository/auth.dart';
import 'package:edumate_mobile/service_locator.dart';

class IsLoggedInUseCase implements UseCase<bool, dynamic> {
  @override
  Future<bool> call({dynamic param}) async {
    return sl<AuthRepository>().isLoggedIn();
  }
}

class FakeIsLoggedInUseCase implements IsLoggedInUseCase {
  @override
  Future<bool> call({dynamic param}) async => false;
}
